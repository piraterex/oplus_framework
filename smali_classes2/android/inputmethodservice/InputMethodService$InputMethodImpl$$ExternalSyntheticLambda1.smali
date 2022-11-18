.class public final synthetic Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda1;->f$0:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    return-void
.end method


# virtual methods
.method public final blacklist onInputEvent(Landroid/view/InputEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda1;->f$0:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->lambda$startStylusHandwriting$0$android-inputmethodservice-InputMethodService$InputMethodImpl(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method
