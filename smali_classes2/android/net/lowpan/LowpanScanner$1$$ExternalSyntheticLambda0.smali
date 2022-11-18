.class public final synthetic Landroid/net/lowpan/LowpanScanner$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/lowpan/LowpanScanner$Callback;

.field public final synthetic blacklist f$1:Landroid/net/lowpan/LowpanBeaconInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/lowpan/LowpanScanner$Callback;Landroid/net/lowpan/LowpanBeaconInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/lowpan/LowpanScanner$1$$ExternalSyntheticLambda0;->f$0:Landroid/net/lowpan/LowpanScanner$Callback;

    iput-object p2, p0, Landroid/net/lowpan/LowpanScanner$1$$ExternalSyntheticLambda0;->f$1:Landroid/net/lowpan/LowpanBeaconInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner$1$$ExternalSyntheticLambda0;->f$0:Landroid/net/lowpan/LowpanScanner$Callback;

    iget-object v1, p0, Landroid/net/lowpan/LowpanScanner$1$$ExternalSyntheticLambda0;->f$1:Landroid/net/lowpan/LowpanBeaconInfo;

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanScanner$1;->lambda$onNetScanBeacon$0(Landroid/net/lowpan/LowpanScanner$Callback;Landroid/net/lowpan/LowpanBeaconInfo;)V

    return-void
.end method
