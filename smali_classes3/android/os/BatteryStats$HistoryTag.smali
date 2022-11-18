.class public final Landroid/os/BatteryStats$HistoryTag;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryTag"
.end annotation


# instance fields
.field public greylist-max-o poolIdx:I

.field public greylist-max-o string:Ljava/lang/String;

.field public greylist-max-o uid:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 1647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1678
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1679
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 1681
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/os/BatteryStats$HistoryTag;

    .line 1683
    .local v2, "that":Landroid/os/BatteryStats$HistoryTag;
    iget v3, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget v4, v2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    if-eq v3, v4, :cond_2

    return v1

    .line 1684
    :cond_2
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 1686
    :cond_3
    return v0

    .line 1679
    .end local v2    # "that":Landroid/os/BatteryStats$HistoryTag;
    :cond_4
    :goto_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 1691
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1692
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    add-int/2addr v1, v2

    .line 1693
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 1671
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1673
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 1674
    return-void
.end method

.method public greylist-max-o setTo(Landroid/os/BatteryStats$HistoryTag;)V
    .locals 1
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryTag;

    .line 1654
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1655
    iget v0, p1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1656
    iget v0, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 1657
    return-void
.end method

.method public greylist-max-o setTo(Ljava/lang/String;I)V
    .locals 1
    .param p1, "_string"    # Ljava/lang/String;
    .param p2, "_uid"    # I

    .line 1660
    iput-object p1, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1661
    iput p2, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1662
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 1663
    return-void
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1666
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1667
    iget v0, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1668
    return-void
.end method
