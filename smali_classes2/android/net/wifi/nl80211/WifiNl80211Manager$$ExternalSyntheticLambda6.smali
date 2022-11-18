.class public final synthetic Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda6;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    return-void
.end method


# virtual methods
.method public final whitelist binderDied()V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda6;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-virtual {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->lambda$retrieveWificondAndRegisterForDeath$1$android-net-wifi-nl80211-WifiNl80211Manager()V

    return-void
.end method
