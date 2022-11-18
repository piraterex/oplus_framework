.class public final Landroid/hardware/hdmi/HdmiPortInfo;
.super Ljava/lang/Object;
.source "HdmiPortInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PORT_INPUT:I = 0x0

.field public static final whitelist PORT_OUTPUT:I = 0x1


# instance fields
.field private final greylist-max-o mAddress:I

.field private final greylist-max-o mArcSupported:Z

.field private final greylist-max-o mCecSupported:Z

.field private final greylist-max-o mId:I

.field private final greylist-max-o mMhlSupported:Z

.field private final greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 131
    new-instance v0, Landroid/hardware/hdmi/HdmiPortInfo$1;

    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiPortInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/hdmi/HdmiPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIIZZZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "address"    # I
    .param p4, "cec"    # Z
    .param p5, "mhl"    # Z
    .param p6, "arc"    # Z

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    .line 57
    iput p2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    .line 58
    iput p3, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    .line 59
    iput-boolean p4, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    .line 60
    iput-boolean p6, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    .line 61
    iput-boolean p5, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    .line 62
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 184
    instance-of v0, p1, Landroid/hardware/hdmi/HdmiPortInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 185
    return v1

    .line 187
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 188
    .local v0, "other":Landroid/hardware/hdmi/HdmiPortInfo;
    iget v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    iget-boolean v3, v0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    iget-boolean v3, v0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    iget-boolean v3, v0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public whitelist getAddress()I
    .locals 1

    .line 88
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    return v0
.end method

.method public whitelist getId()I
    .locals 1

    .line 70
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    return v0
.end method

.method public whitelist getType()I
    .locals 1

    .line 79
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 195
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 195
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isArcSupported()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    return v0
.end method

.method public whitelist isCecSupported()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    return v0
.end method

.method public whitelist isMhlSupported()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "port_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string/jumbo v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    if-nez v3, :cond_0

    const-string v3, "HDMI_IN"

    goto :goto_0

    :cond_0
    const-string v3, "HDMI_OUT"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "0x%04x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, "cec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, "arc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, "mhl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 161
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    return-void
.end method
