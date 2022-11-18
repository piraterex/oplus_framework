.class public Landroid/telephony/data/Qos$QosBandwidth;
.super Ljava/lang/Object;
.source "Qos.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/Qos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QosBandwidth"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/Qos$QosBandwidth;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist guaranteedBitrateKbps:I

.field blacklist maxBitrateKbps:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Landroid/telephony/data/Qos$QosBandwidth$1;

    invoke-direct {v0}, Landroid/telephony/data/Qos$QosBandwidth$1;-><init>()V

    sput-object v0, Landroid/telephony/data/Qos$QosBandwidth;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 0
    .param p1, "maxBitrateKbps"    # I
    .param p2, "guaranteedBitrateKbps"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    .line 71
    iput p2, p0, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    .line 72
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    .line 77
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/Qos$QosBandwidth-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/Qos$QosBandwidth;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 105
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 107
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/telephony/data/Qos$QosBandwidth;

    if-nez v2, :cond_1

    goto :goto_1

    .line 111
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/Qos$QosBandwidth;

    .line 112
    .local v2, "other":Landroid/telephony/data/Qos$QosBandwidth;
    iget v3, p0, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    iget v4, v2, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    iget v4, v2, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 108
    .end local v2    # "other":Landroid/telephony/data/Qos$QosBandwidth;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getGuaranteedBitrateKbps()I
    .locals 1

    .line 84
    iget v0, p0, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    return v0
.end method

.method public blacklist getMaxBitrateKbps()I
    .locals 1

    .line 80
    iget v0, p0, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bandwidth { maxBitrateKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " guaranteedBitrateKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    iget v0, p0, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void
.end method
