.class public final synthetic Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda7;->f$0:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda7;->f$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->$r8$lambda$nMoGsSshcBNZe61VPESespVJMGQ(Landroid/inputmethodservice/InputMethodService;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
