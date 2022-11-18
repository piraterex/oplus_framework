.class public final synthetic Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda0;->f$0:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda0;->f$0:Landroid/inputmethodservice/InputMethodService;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onStylusHandwritingMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method
