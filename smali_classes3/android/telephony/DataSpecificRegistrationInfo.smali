.class public final Landroid/telephony/DataSpecificRegistrationInfo;
.super Ljava/lang/Object;
.source "DataSpecificRegistrationInfo.java"

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
            "Landroid/telephony/DataSpecificRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist isDcNrRestricted:Z

.field public final blacklist isEnDcAvailable:Z

.field public final blacklist isNrAvailable:Z

.field private final blacklist mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

.field public final blacklist maxDataCalls:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 162
    new-instance v0, Landroid/telephony/DataSpecificRegistrationInfo$1;

    invoke-direct {v0}, Landroid/telephony/DataSpecificRegistrationInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/DataSpecificRegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IZZZLandroid/telephony/VopsSupportInfo;)V
    .locals 0
    .param p1, "maxDataCalls"    # I
    .param p2, "isDcNrRestricted"    # Z
    .param p3, "isNrAvailable"    # Z
    .param p4, "isEnDcAvailable"    # Z
    .param p5, "vops"    # Landroid/telephony/VopsSupportInfo;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    .line 86
    iput-boolean p2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    .line 87
    iput-boolean p3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    .line 88
    iput-boolean p4, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    .line 89
    iput-object p5, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    .line 90
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    .line 111
    const-class v0, Landroid/telephony/VopsSupportInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/VopsSupportInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/VopsSupportInfo;

    iput-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    .line 112
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/DataSpecificRegistrationInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/DataSpecificRegistrationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/DataSpecificRegistrationInfo;)V
    .locals 1
    .param p1, "dsri"    # Landroid/telephony/DataSpecificRegistrationInfo;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iget v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    .line 100
    iget-boolean v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    .line 101
    iget-boolean v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    .line 102
    iget-boolean v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    .line 103
    iget-object v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    iput-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    .line 104
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 150
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 152
    :cond_0
    instance-of v1, p1, Landroid/telephony/DataSpecificRegistrationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 154
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/DataSpecificRegistrationInfo;

    .line 155
    .local v1, "other":Landroid/telephony/DataSpecificRegistrationInfo;
    iget v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    iget v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    iget-boolean v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    iget-boolean v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    iget-boolean v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    iget-object v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    .line 159
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 155
    :goto_0
    return v0
.end method

.method public whitelist getLteVopsSupportInfo()Landroid/telephony/LteVopsSupportInfo;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    iget-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    instance-of v1, v0, Landroid/telephony/LteVopsSupportInfo;

    if-eqz v1, :cond_0

    .line 184
    check-cast v0, Landroid/telephony/LteVopsSupportInfo;

    goto :goto_0

    .line 185
    :cond_0
    new-instance v0, Landroid/telephony/LteVopsSupportInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/telephony/LteVopsSupportInfo;-><init>(II)V

    .line 183
    :goto_0
    return-object v0
.end method

.method public whitelist getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;
    .locals 1

    .line 197
    iget-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 144
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    .line 145
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 144
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    const-string v1, " :{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " maxDataCalls = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isDcNrRestricted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isNrAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isEnDcAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 116
    iget v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 118
    iget-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 119
    iget-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 120
    iget-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 121
    return-void
.end method
