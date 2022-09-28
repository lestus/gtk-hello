public class MyApp:Gtk.Application{
    public MyApp(){
        Object(
            application_id: "com.github.lestus.gtk-hello",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }
    
    protected override void activate(){
        var button_hi = new Gtk.Button.with_label("Ok"){
            margin = 12
        };
        
        button_hi.clicked.connect(()=>{
            button_hi.label="SYNACK";
            button_hi.sensitive=false;
        });
        
        var main_window = new Gtk.ApplicationWindow(this){
            default_height=200,
            default_width=300,
            title="GTK Application"
        };
        main_window.add(button_hi);
        main_window.show_all();
    }
    
    public static int main(string[] args){
        return new MyApp().run(args);
    }
}
