functor
import
   Application
   System
   VM
   Property
define
  Show = System.show

  {Property.put 'gc.on' false}

  {Show vm1#start}
  {Wait VM}
  {Show VM}
  VM1={VM.current}
  {Show VM1}

  {Show pickle_pack#{Property.get 'pickle.pack'}}
  {Show {{Property.get 'pickle.pack'} 42}}

  S={VM.stream}
  {Show gotStream}
  {Show vm1#S}
  {Send VM1 42}
  {Show startDelay}
  {Delay 100}
  {Show stopDelay}
  {Show vm1#S}
  {Send VM1 wow}
  {Show vm1#S}
  {Show vm1#theend}

  {Delay 1000}
  {Show vm1#S}

  {Application.exit 0}
end
