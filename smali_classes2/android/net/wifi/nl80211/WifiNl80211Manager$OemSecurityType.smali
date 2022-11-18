.class public Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;
.super Ljava/lang/Object;
.source "WifiNl80211Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/WifiNl80211Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OemSecurityType"
.end annotation


# instance fields
.field public final whitelist groupCipher:I

.field public final whitelist keyManagement:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final whitelist pairwiseCipher:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final whitelist protocol:I


# direct methods
.method public constructor whitelist <init>(ILjava/util/List;Ljava/util/List;I)V
    .locals 1
    .param p1, "protocol"    # I
    .param p4, "groupCipher"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1594
    .local p2, "keyManagement":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "pairwiseCipher":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1595
    iput p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;->protocol:I

    .line 1596
    if-eqz p2, :cond_0

    .line 1597
    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;->keyManagement:Ljava/util/List;

    .line 1598
    if-eqz p3, :cond_1

    .line 1599
    move-object v0, p3

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iput-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;->pairwiseCipher:Ljava/util/List;

    .line 1600
    iput p4, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;->groupCipher:I

    .line 1601
    return-void
.end method
