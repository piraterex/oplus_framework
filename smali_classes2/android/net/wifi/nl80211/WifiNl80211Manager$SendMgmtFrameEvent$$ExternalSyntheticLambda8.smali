.class public final synthetic Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda8;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;

    iput p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda8;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda8;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;

    iget v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda8;->f$1:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->lambda$OnAck$4$android-net-wifi-nl80211-WifiNl80211Manager$SendMgmtFrameEvent(I)V

    return-void
.end method
