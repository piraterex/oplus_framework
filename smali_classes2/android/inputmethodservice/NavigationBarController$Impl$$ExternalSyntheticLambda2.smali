.class public final synthetic Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/inputmethodservice/NavigationBarController$Impl;

.field public final synthetic blacklist f$1:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/inputmethodservice/NavigationBarController$Impl;Landroid/inputmethodservice/navigationbar/NavigationBarFrame;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda2;->f$0:Landroid/inputmethodservice/NavigationBarController$Impl;

    iput-object p2, p0, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda2;->f$1:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda2;->f$0:Landroid/inputmethodservice/NavigationBarController$Impl;

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda2;->f$1:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/NavigationBarController$Impl;->lambda$scheduleRelayout$0$android-inputmethodservice-NavigationBarController$Impl(Landroid/inputmethodservice/navigationbar/NavigationBarFrame;)V

    return-void
.end method
