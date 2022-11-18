.class public final Landroid/telephony/data/TrafficDescriptor;
.super Ljava/lang/Object;
.source "TrafficDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/TrafficDescriptor$Builder;,
        Landroid/telephony/data/TrafficDescriptor$OsAppId;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDnn:Ljava/lang/String;

.field private final blacklist mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 285
    new-instance v0, Landroid/telephony/data/TrafficDescriptor$1;

    invoke-direct {v0}, Landroid/telephony/data/TrafficDescriptor$1;-><init>()V

    sput-object v0, Landroid/telephony/data/TrafficDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 206
    .local v0, "osAppIdBytes":[B
    const/4 v1, 0x0

    .line 207
    .local v1, "osAppId":Landroid/telephony/data/TrafficDescriptor$OsAppId;
    if-eqz v0, :cond_0

    .line 208
    new-instance v2, Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-direct {v2, v0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;-><init>([B)V

    move-object v1, v2

    .line 210
    :cond_0
    iput-object v1, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    .line 212
    invoke-direct {p0}, Landroid/telephony/data/TrafficDescriptor;->enforceAllowedIds()V

    .line 213
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/TrafficDescriptor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/TrafficDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "dnn"    # Ljava/lang/String;
    .param p2, "osAppIdRawBytes"    # [B

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "osAppId":Landroid/telephony/data/TrafficDescriptor$OsAppId;
    if-eqz p2, :cond_0

    .line 226
    new-instance v1, Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-direct {v1, p2}, Landroid/telephony/data/TrafficDescriptor$OsAppId;-><init>([B)V

    move-object v0, v1

    .line 228
    :cond_0
    iput-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    .line 230
    invoke-direct {p0}, Landroid/telephony/data/TrafficDescriptor;->enforceAllowedIds()V

    .line 231
    return-void
.end method

.method private blacklist enforceAllowedIds()V
    .locals 3

    .line 239
    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getOsId()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Landroid/telephony/data/TrafficDescriptor$OsAppId;->ANDROID_OS_ID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OS id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-virtual {v2}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getOsId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/data/TrafficDescriptor$OsAppId;->ANDROID_OS_ID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->-$$Nest$sfgetALLOWED_APP_IDS()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-virtual {v1}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 245
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal app id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-virtual {v2}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Only allowing one of the following "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->-$$Nest$sfgetALLOWED_APP_IDS()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 300
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 301
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 302
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/TrafficDescriptor;

    .line 303
    .local v2, "that":Landroid/telephony/data/TrafficDescriptor;
    iget-object v3, p0, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    iget-object v4, v2, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 301
    .end local v2    # "that":Landroid/telephony/data/TrafficDescriptor;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getDataNetworkName()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOsAppId()[B
    .locals 1

    .line 266
    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 308
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrafficDescriptor={mDnn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 281
    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 283
    return-void
.end method
