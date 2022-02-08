import os
import net
import time
import term


fn handle_connections(mut conn net.TcpConn) {
    conn.set_read_timeout(time.infinite)
    mut user := os.input("USERNAME: ")
    time.sleep(1 * time.nanosecond)
    mut pass := os.input("PASSWORD: ")
    if user.contains("MrHive17")
    {
        time.sleep(1 * time.nanosecond)
    } else {
        println("USER NOT IN DATA BASE")
        exit(0)
    }
    if pass.contains("HIVENET7")
    {
        time.sleep(1 * time.nanosecond)
        term.clear()
        println("WELCONE THE POSIDENS HIVENET")
    } else {
        println("password invalid")
        exit(0)
    }
    time.sleep(1 * time.nanosecond)
    banner()
    time.sleep(1 * time.nanosecond)
    for {
        mut hiv := os.input("HIVENET: ")
        if hiv.contains("help")
			{
				help()
			}
        if hiv.contains("clear")
			{
				term.clear()
				banner()
			}
        if hiv == "methods"
			{
				methods()
			}
        if hiv.contains("DISCORD LINK")
			{
				println("NO LINK YET")
			}
        if hiv.contains("V CHAT")
			{
				chat()
			}
		if hiv.contains("attack")
			{
				attackxv()
			}
    }
}

fn client_listener(port int) {
    mut server := net.listen_tcp(.ip6, ":${port}") or {return}
    for {
        mut conn := server.accept() or {
        continue
        }
        go handle_connections(mut conn)
    }
}


fn main() {
    port := 1337  //screen port
    if port > 65535 {
        print("Port out of range")
    } else if port < 1 {
        print("Select a bigger port!")
    }
    client_listener(port)
}


fn help() {
    println("╔══════════════════════════════╗") 
    println("║  ╦ ╦╔═╗╦  ╔═╗  ╔╦╗╔═╗╔╗╔╦ ╦  ║") 
    println("║  ╠═╣║╣ ║  ╠═╝  ║║║║╣ ║║║║ ║  ║")
    println("║  ╩ ╩╚═╝╩═╝╩    ╩ ╩╚═╝╝╚╝╚═╝  ║") 
    println("╩══════════════════════════════╩") 
    println("╔════║══║════╗") 
    println("║DISCORD LINK║")
    println("║IP LOOKUP   ║")
    println("║METHODS     ║") //NET METHODS
    println("║V CHAT      ║") //LIVE-V-TCP-CHAT
    println("║V-API ADDER ║") //API ADDER MADE IN V COMMING SOON
    println("║MORE SOON   ║") 
    println("╚════════════╝") 
}


fn banner() {
    println("                    ╔═══════════════════════════════╗") 
    println("                    ║    ╔═╗╔═╗╔═╗╦╔╦╗╔═╗╔╗╔╔═╗     ║") 
    println("                    ║    ╠═╝║ ║╚═╗║ ║║║╣ ║║║╚═╗     ║") 
    println("                    ║    ╩  ╚═╝╚═╝╩═╩╝╚═╝╝╚╝╚═╝     ║") 
    println("╔════════════╦══════╣     ╦ ╦╦╦  ╦╔═╗╔╗╔╔═╗╔╦╗      ╠══════╦════════════╗") 
    println("║  POSIDENS  ║xxxxxx║     ╠═╣║╚╗╔╝║╣ ║║║║╣  ║       ║xxxxxx║   HIVENET  ║")
    println("║            ║xxxxxx║     ╩ ╩╩ ╚╝ ╚═╝╝╚╝╚═╝ ╩       ║xxxxxx║            ║") 
    println("║            ║xxxxxx║                         v1.00 ║xxxxxx║            ║") 
    println("║            ║xxxxx═╩═╦══════╦═════════════╦══════╦═╩═xxxxx║            ║")
    println("║            ╚════════╝      ║             ║      ╚════════╝            ║") 
    println("║  Owner Discord:            ║             ║   Co Owner Discord:        ║")
    println("║  Insta: @Kxng_ivl          ║             ║   Insta:  soon             ║")
    println("╚════════════════════════════╝             ╚════════════════════════════╝")
}

fn methods() {
    println("                    ╔═══════════════════════════════╗")
    println("                    ║      ╔╦╗╔═╗╔╦╗╦ ╦╔═╗╔╦╗╔═╗    ║")
    println("                    ║      ║║║║╣  ║ ╠═╣║ ║ ║║╚═╗    ║")
    println("                    ║      ╩ ╩╚═╝ ╩ ╩ ╩╚═╝═╩╝╚═╝    ║")
    println("╔════════════╦══════╩═══════════════════════════════╩══════╦════════════╗")
    println("║  POSIDENS  ║xxxxxx║      TO ATTACK TYPE ATTACK    ║xxxxxx║   METHODS  ║")
    println("║            ║xxxxx═╩═╦══════╦═════════════╦══════╦═╩═xxxxx║            ║")
    println("║            ╚════════╝      ║ COMING SOON ║      ╚════════╝            ║")
    println("║                            ║    0 API    ║                            ║")
    println("║                            ║___Online____║                            ║")
    println("║           UDP               _____________                             ║")
    println("║ ONLY METHOD I GOT RN LOL   ║             ║                            ║")
    println("║                            ║             ║                            ║")
    println("║                            ║             ║                            ║")
    println("║                            ║             ║                            ║")
    println("║                            ║             ║                            ║")
    println("╚════════════════════════════╝             ╚════════════════════════════╝")
}

pub fn chat() {
    term.clear()
    time.sleep(1 * time.nanosecond)
    for {
        mut usersname := os.input("NAME: ")
        time.sleep(1 * time.nanosecond)
        mut userinput := os.input("CHAT: ")
        term.clear()
        println("FROM:$usersname:said:$userinput\n")
        if userinput.contains("exit chat")
			{
				time.sleep(1 * time.nanosecond)
			}
		continue
    }
}

//pub fn addvapi() {
//	mut deskapikey := os.input("WOULD YOU LIKE TO ADD API TO THE NET?: ")
//	if deskapikey.contains("Y")
//		{
//			vauth.apikeyadder()
//		}
//}

//fn ipfind() {
//	mut lookup := os.input("ENTER IP TO LOOKUP: ")
//	r := http.get_text("https://ipapi.co/$lookup/json/")
//	println("$r")
//}


fn attackxv (){
    mut ip := os.input("IP: ") //need to make ip ranges
    if ip.contains("") {
        time.sleep(1 * time.nanosecond)
    }
	mut port := os.input("PORT: ")
    if port.contains("0") {
       time.sleep(1 * time.nanosecond)
    }
    mut x := 1500
	mut time_x := os.input("TIME: ") //no max time thats a problem
    if time_x.contains("") {
        time.sleep(1 * time.nanosecond)
    }
    methods()
	mut method := os.input("METHOD: ")
	attack_sent_v()
//its cause i have the important shit comment out
	//attack_sent := http.get("$key" + "&ip=" ip + "&port=" port + "&time=" time + "&method=" method) //soon
}



//mut key := "API LINK GOES HERE"

fn attack_sent_v() {
	println(" █████╗ ████████╗████████╗ █████╗  ██████╗██╗  ██╗")
	time.sleep(4 * time.nanosecond)
	println("██╔══██╗╚══██╔══╝╚══██╔══╝██╔══██╗██╔════╝██║ ██╔╝")
	time.sleep(4 * time.nanosecond)
	println("███████║   ██║      ██║   ███████║██║     █████╔╝ ")
	time.sleep(4 * time.nanosecond)
	println("██╔══██║   ██║      ██║   ██╔══██║██║     ██╔═██╗ ")
	time.sleep(4 * time.nanosecond)
	println("██║  ██║   ██║      ██║   ██║  ██║╚██████╗██║  ██╗")
	time.sleep(4 * time.nanosecond)
	println("╚═╝  ╚═╝   ╚═╝      ╚═╝   ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝")
	time.sleep(4 * time.nanosecond)
	println("███████╗███████╗███╗   ██╗████████╗")
	time.sleep(4 * time.nanosecond)
	println("██╔════╝██╔════╝████╗  ██║╚══██╔══╝")
	time.sleep(4 * time.nanosecond)
	println("███████╗█████╗  ██╔██╗ ██║   ██║   ")
	time.sleep(4 * time.nanosecond)
	println("╚════██║██╔══╝  ██║╚██╗██║   ██║   ")
	time.sleep(4 * time.nanosecond)
	println("███████║███████╗██║ ╚████║   ██║   ")
	time.sleep(4 * time.nanosecond)
	println("╚══════╝╚══════╝╚═╝  ╚═══╝   ╚═╝   ")
}

		//if hiv.contains("V-API")
		//{
		//	println("WOULD YOU LIKE TO ADD API TO YOUR PERSONAL NET?")
		//	mut hxe := os.input("Y or N: ")
		//	if hxe.contains("Y")
		//	{
		//		time.sleep(1 * time.nanosecond)
		//		addvapi()
		//	} else {
		//		exit(1)
		//	}
		//}
//import vauth

//import rand
//import net.http
//V,C,C++,JS,RB,PY,Xlang,HTML
 //if hiv == "ip lookup"
        //{
        //    ipfind()
        //}




//possible login method
//struct user_name_v {
//		username string
//}

//fn (x user_name_v) check_user() bool {
//		return x.username = true
//}

//const(
//	password int
//)

//user_name_v := root_the_hive{
//				password: 17717713209
//}

//if password < 17717713209
//	{
//		exit(0)
//	}