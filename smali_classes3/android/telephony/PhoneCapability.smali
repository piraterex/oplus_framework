.class public final Landroid/telephony/PhoneCapability;
.super Ljava/lang/Object;
.source "PhoneCapability.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneCapability$DeviceNrCapability;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/PhoneCapability;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_DSDS_CAPABILITY:Landroid/telephony/PhoneCapability;

.field public static final blacklist DEFAULT_SSSS_CAPABILITY:Landroid/telephony/PhoneCapability;

.field public static final whitelist DEVICE_NR_CAPABILITY_NSA:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_NR_CAPABILITY_SA:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mDeviceNrCapabilities:[I

.field private final blacklist mLogicalModemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ModemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMaxActiveDataSubscriptions:I

.field private final blacklist mMaxActiveVoiceSubscriptions:I

.field private final blacklist mNetworkValidationBeforeSwitchSupported:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 73
    new-instance v0, Landroid/telephony/ModemInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/telephony/ModemInfo;-><init>(IIZZ)V

    .line 74
    .local v0, "modemInfo1":Landroid/telephony/ModemInfo;
    new-instance v3, Landroid/telephony/ModemInfo;

    invoke-direct {v3, v2, v1, v2, v2}, Landroid/telephony/ModemInfo;-><init>(IIZZ)V

    move-object v2, v3

    .line 76
    .local v2, "modemInfo2":Landroid/telephony/ModemInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v3, "logicalModemList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ModemInfo;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-array v1, v1, [I

    .line 81
    .local v1, "deviceNrCapabilities":[I
    new-instance v10, Landroid/telephony/PhoneCapability;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v4, v10

    move-object v7, v3

    move-object v9, v1

    invoke-direct/range {v4 .. v9}, Landroid/telephony/PhoneCapability;-><init>(IILjava/util/List;Z[I)V

    sput-object v10, Landroid/telephony/PhoneCapability;->DEFAULT_DSDS_CAPABILITY:Landroid/telephony/PhoneCapability;

    .line 84
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 85
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v10, Landroid/telephony/PhoneCapability;

    move-object v4, v10

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Landroid/telephony/PhoneCapability;-><init>(IILjava/util/List;Z[I)V

    sput-object v10, Landroid/telephony/PhoneCapability;->DEFAULT_SSSS_CAPABILITY:Landroid/telephony/PhoneCapability;

    .line 204
    .end local v0    # "modemInfo1":Landroid/telephony/ModemInfo;
    .end local v1    # "deviceNrCapabilities":[I
    .end local v2    # "modemInfo2":Landroid/telephony/ModemInfo;
    .end local v3    # "logicalModemList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ModemInfo;>;"
    new-instance v0, Landroid/telephony/PhoneCapability$1;

    invoke-direct {v0}, Landroid/telephony/PhoneCapability$1;-><init>()V

    sput-object v0, Landroid/telephony/PhoneCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/util/List;Z[I)V
    .locals 1
    .param p1, "maxActiveVoiceSubscriptions"    # I
    .param p2, "maxActiveDataSubscriptions"    # I
    .param p4, "networkValidationBeforeSwitchSupported"    # Z
    .param p5, "deviceNrCapabilities"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/telephony/ModemInfo;",
            ">;Z[I)V"
        }
    .end annotation

    .line 130
    .local p3, "logicalModemList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ModemInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    .line 132
    iput p2, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    .line 134
    if-nez p3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    iput-object v0, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    .line 135
    iput-boolean p4, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    .line 136
    iput-object p5, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    .line 137
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    .line 153
    const-class v1, Landroid/telephony/ModemInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/telephony/ModemInfo;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    .line 155
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/PhoneCapability-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/PhoneCapability;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 168
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Landroid/telephony/PhoneCapability;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/telephony/PhoneCapability;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 172
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 173
    return v1

    .line 176
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/PhoneCapability;

    .line 178
    .local v2, "s":Landroid/telephony/PhoneCapability;
    iget v3, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    iget v4, v2, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    iget v4, v2, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    iget-boolean v4, v2, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    .line 182
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    iget-object v4, v2, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    .line 183
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    nop

    .line 178
    :goto_0
    return v0

    .line 169
    .end local v2    # "s":Landroid/telephony/PhoneCapability;
    :cond_3
    :goto_1
    return v0
.end method

.method public whitelist getDeviceNrCapabilities()[I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 265
    iget-object v0, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    :cond_0
    return-object v0
.end method

.method public blacklist getLogicalModemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ModemInfo;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMaxActiveDataSubscriptions()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 233
    iget v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    return v0
.end method

.method public whitelist getMaxActiveVoiceSubscriptions()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 223
    iget v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 159
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    .line 162
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    .line 163
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 159
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isNetworkValidationBeforeSwitchSupported()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMaxActiveVoiceSubscriptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMaxActiveDataSubscriptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNetworkValidationBeforeSwitchSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDeviceNrCapability "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    .line 145
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 197
    iget v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-boolean v0, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 200
    iget-object v0, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 201
    iget-object v0, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 202
    return-void
.end method
