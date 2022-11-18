.class public Landroid/telephony/ModemInfo;
.super Ljava/lang/Object;
.source "ModemInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ModemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist isDataSupported:Z

.field public final blacklist isVoiceSupported:Z

.field public final blacklist modemId:I

.field public final blacklist rat:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Landroid/telephony/ModemInfo$1;

    invoke-direct {v0}, Landroid/telephony/ModemInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ModemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2
    .param p1, "modemId"    # I

    .line 37
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/telephony/ModemInfo;-><init>(IIZZ)V

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(IIZZ)V
    .locals 0
    .param p1, "modemId"    # I
    .param p2, "rat"    # I
    .param p3, "isVoiceSupported"    # Z
    .param p4, "isDataSupported"    # Z

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Landroid/telephony/ModemInfo;->modemId:I

    .line 42
    iput p2, p0, Landroid/telephony/ModemInfo;->rat:I

    .line 43
    iput-boolean p3, p0, Landroid/telephony/ModemInfo;->isVoiceSupported:Z

    .line 44
    iput-boolean p4, p0, Landroid/telephony/ModemInfo;->isDataSupported:Z

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ModemInfo;->modemId:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ModemInfo;->rat:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ModemInfo;->isVoiceSupported:Z

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ModemInfo;->isDataSupported:Z

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Landroid/telephony/ModemInfo;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/telephony/ModemInfo;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 72
    return v1

    .line 75
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/ModemInfo;

    .line 77
    .local v2, "s":Landroid/telephony/ModemInfo;
    iget v3, p0, Landroid/telephony/ModemInfo;->modemId:I

    iget v4, v2, Landroid/telephony/ModemInfo;->modemId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/ModemInfo;->rat:I

    iget v4, v2, Landroid/telephony/ModemInfo;->rat:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/ModemInfo;->isVoiceSupported:Z

    iget-boolean v4, v2, Landroid/telephony/ModemInfo;->isVoiceSupported:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/ModemInfo;->isDataSupported:Z

    iget-boolean v4, v2, Landroid/telephony/ModemInfo;->isDataSupported:Z

    if-ne v3, v4, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 68
    .end local v2    # "s":Landroid/telephony/ModemInfo;
    :cond_3
    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/ModemInfo;->modemId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/ModemInfo;->rat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/ModemInfo;->isVoiceSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/ModemInfo;->isDataSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "modemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ModemInfo;->modemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ModemInfo;->rat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isVoiceSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/ModemInfo;->isVoiceSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isDataSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/ModemInfo;->isDataSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 94
    iget v0, p0, Landroid/telephony/ModemInfo;->modemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Landroid/telephony/ModemInfo;->rat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-boolean v0, p0, Landroid/telephony/ModemInfo;->isVoiceSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 97
    iget-boolean v0, p0, Landroid/telephony/ModemInfo;->isDataSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 98
    return-void
.end method
