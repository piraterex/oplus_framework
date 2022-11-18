.class public final synthetic Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda0;->f$0:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda0;->f$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->lambda$scheduleImeSurfaceRemoval$2$android-inputmethodservice-InputMethodService()V

    return-void
.end method
