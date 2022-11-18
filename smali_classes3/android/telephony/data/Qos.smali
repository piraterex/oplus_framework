.class public abstract Landroid/telephony/data/Qos;
.super Ljava/lang/Object;
.source "Qos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/Qos$QosBandwidth;,
        Landroid/telephony/data/Qos$QosType;
    }
.end annotation


# static fields
.field static final blacklist QOS_TYPE_EPS:I = 0x1

.field static final blacklist QOS_TYPE_NR:I = 0x2


# instance fields
.field final blacklist downlink:Landroid/telephony/data/Qos$QosBandwidth;

.field final blacklist type:I

.field final blacklist uplink:Landroid/telephony/data/Qos$QosBandwidth;


# direct methods
.method constructor blacklist <init>(ILandroid/telephony/data/Qos$QosBandwidth;Landroid/telephony/data/Qos$QosBandwidth;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "downlink"    # Landroid/telephony/data/Qos$QosBandwidth;
    .param p3, "uplink"    # Landroid/telephony/data/Qos$QosBandwidth;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Landroid/telephony/data/Qos;->type:I

    .line 53
    iput-object p2, p0, Landroid/telephony/data/Qos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    .line 54
    iput-object p3, p0, Landroid/telephony/data/Qos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    .line 55
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/Qos;->type:I

    .line 139
    const-class v0, Landroid/telephony/data/Qos$QosBandwidth;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/Qos$QosBandwidth;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/Qos$QosBandwidth;

    iput-object v0, p0, Landroid/telephony/data/Qos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    .line 140
    const-class v0, Landroid/telephony/data/Qos$QosBandwidth;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/Qos$QosBandwidth;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/Qos$QosBandwidth;

    iput-object v0, p0, Landroid/telephony/data/Qos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    .line 141
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 167
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 169
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/data/Qos;

    .line 170
    .local v1, "other":Landroid/telephony/data/Qos;
    iget v2, p0, Landroid/telephony/data/Qos;->type:I

    iget v3, v1, Landroid/telephony/data/Qos;->type:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/telephony/data/Qos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    iget-object v3, v1, Landroid/telephony/data/Qos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    .line 171
    invoke-virtual {v2, v3}, Landroid/telephony/data/Qos$QosBandwidth;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/data/Qos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    iget-object v3, v1, Landroid/telephony/data/Qos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    .line 172
    invoke-virtual {v2, v3}, Landroid/telephony/data/Qos$QosBandwidth;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0
.end method

.method public blacklist getDownlinkBandwidth()Landroid/telephony/data/Qos$QosBandwidth;
    .locals 1

    .line 58
    iget-object v0, p0, Landroid/telephony/data/Qos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 157
    iget v0, p0, Landroid/telephony/data/Qos;->type:I

    return v0
.end method

.method public blacklist getUplinkBandwidth()Landroid/telephony/data/Qos$QosBandwidth;
    .locals 1

    .line 62
    iget-object v0, p0, Landroid/telephony/data/Qos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 162
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/data/Qos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/Qos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist writeToParcel(ILandroid/os/Parcel;I)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .line 150
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Landroid/telephony/data/Qos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    invoke-virtual {p2, v0, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 152
    iget-object v0, p0, Landroid/telephony/data/Qos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    invoke-virtual {p2, v0, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 153
    return-void
.end method
