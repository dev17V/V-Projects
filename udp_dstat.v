import time
import term
import os
import os.cmdline
import net

fn main() {
        term.clear()
	println('Usage: v run FLOOD_STAT.v [-l] [-p 1771]')
	println('-cp  customport')
        time.sleep(1 * time.second)
        term.clear()
        mut ip := os.input("IP: ")
	flood_stat_server := '$ip' in os.args
	port := cmdline.option(os.args, '-cp', '40001').int()
	mut buf := []byte{len: 100}
	if flood_stat_server {
                time.sleep(1 * time.nanosecond)
		println('SERVER $flood_stat_server : INCOMMING PACKETS ON PORT: $port')
		mut c := net.listen_udp(':$port') ?
		for {
			read, addr := c.read(mut buf) or { continue }
			println('INCOMMING TRAFFIC: $read FROM $addr')
			c.write_to(addr, buf[..read]) or {
				println('Server: connection dropped')
				continue
			}
		}
	} else {
		println('UDP client, sending packets to port: ${port}.\nType `exit` to exit.')
		mut c := net.dial_udp('localhost:$port') ?
		for {
			mut line := os.input('client > ')
			match line {
				'' {
					line = '\n'
				}
				'exit' {
					println('goodbye.')
					exit(0)
				}
				else {}
			}
			c.write_string(line) ?
			read, _ := c.read(mut buf) ?
			println('server : ' + buf[0..read].bytestr())
		}
	}
}
