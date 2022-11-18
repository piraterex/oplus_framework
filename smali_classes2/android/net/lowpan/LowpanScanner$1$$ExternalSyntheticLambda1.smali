.class public final synthetic Landroid/net/lowpan/LowpanScanner$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/lowpan/LowpanScanner$Callback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/lowpan/LowpanScanner$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/lowpan/LowpanScanner$1$$ExternalSyntheticLambda1;->f$0:Landroid/net/lowpan/LowpanScanner$Callback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner$1$$ExternalSyntheticLambda1;->f$0:Landroid/net/lowpan/LowpanScanner$Callback;

    invoke-static {v0}, Landroid/net/lowpan/LowpanScanner$1;->lambda$onNetScanFinished$1(Landroid/net/lowpan/LowpanScanner$Callback;)V

    return-void
.end method
