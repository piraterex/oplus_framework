.class final Landroid/hardware/input/InputManager$InputDevicesChangedListener;
.super Landroid/hardware/input/IInputDevicesChangedListener$Stub;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDevicesChangedListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/input/InputManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/input/InputManager;)V
    .locals 0

    .line 1783
    iput-object p1, p0, Landroid/hardware/input/InputManager$InputDevicesChangedListener;->this$0:Landroid/hardware/input/InputManager;

    invoke-direct {p0}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$InputDevicesChangedListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager$InputDevicesChangedListener;-><init>(Landroid/hardware/input/InputManager;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o onInputDevicesChanged([I)V
    .locals 1
    .param p1, "deviceIdAndGeneration"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1786
    iget-object v0, p0, Landroid/hardware/input/InputManager$InputDevicesChangedListener;->this$0:Landroid/hardware/input/InputManager;

    invoke-static {v0, p1}, Landroid/hardware/input/InputManager;->-$$Nest$monInputDevicesChanged(Landroid/hardware/input/InputManager;[I)V

    .line 1787
    return-void
.end method
