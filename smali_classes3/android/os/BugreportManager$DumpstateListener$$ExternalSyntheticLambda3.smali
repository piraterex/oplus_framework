.class public final synthetic Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/BugreportManager$DumpstateListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/BugreportManager$DumpstateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda3;->f$0:Landroid/os/BugreportManager$DumpstateListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda3;->f$0:Landroid/os/BugreportManager$DumpstateListener;

    invoke-virtual {v0}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onFinished$2$android-os-BugreportManager$DumpstateListener()V

    return-void
.end method
