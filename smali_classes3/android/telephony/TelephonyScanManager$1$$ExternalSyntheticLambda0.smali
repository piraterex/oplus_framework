.class public final synthetic Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    invoke-static {v0}, Landroid/telephony/TelephonyScanManager$1;->lambda$handleMessage$0(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    return-void
.end method
