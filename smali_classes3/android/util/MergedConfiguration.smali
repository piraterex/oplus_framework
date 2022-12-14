.class public Landroid/util/MergedConfiguration;
.super Landroid/util/OplusBaseMergedConfiguration;
.source "MergedConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/util/MergedConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mGlobalConfig:Landroid/content/res/Configuration;

.field private final greylist-max-o mMergedConfig:Landroid/content/res/Configuration;

.field private final greylist-max-o mOverrideConfig:Landroid/content/res/Configuration;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Landroid/util/MergedConfiguration$1;

    invoke-direct {v0}, Landroid/util/MergedConfiguration$1;-><init>()V

    sput-object v0, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/util/OplusBaseMergedConfiguration;-><init>()V

    .line 39
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 40
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 41
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    .line 44
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "globalConfig"    # Landroid/content/res/Configuration;

    .line 50
    invoke-direct {p0}, Landroid/util/OplusBaseMergedConfiguration;-><init>()V

    .line 39
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 40
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 41
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    .line 51
    invoke-virtual {p0, p1}, Landroid/util/MergedConfiguration;->setGlobalConfiguration(Landroid/content/res/Configuration;)V

    .line 52
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "globalConfig"    # Landroid/content/res/Configuration;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 46
    invoke-direct {p0}, Landroid/util/OplusBaseMergedConfiguration;-><init>()V

    .line 39
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 40
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 41
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    .line 47
    invoke-virtual {p0, p1, p2}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 48
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Landroid/util/OplusBaseMergedConfiguration;-><init>()V

    .line 39
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 40
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 41
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    .line 60
    invoke-virtual {p0, p1}, Landroid/util/MergedConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    .line 61
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/util/MergedConfiguration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/MergedConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/util/MergedConfiguration;)V
    .locals 2
    .param p1, "mergedConfiguration"    # Landroid/util/MergedConfiguration;

    .line 54
    invoke-direct {p0}, Landroid/util/OplusBaseMergedConfiguration;-><init>()V

    .line 39
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 40
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 41
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    .line 55
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 55
    invoke-virtual {p0, v0, v1}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 57
    return-void
.end method

.method private greylist-max-o updateMergedConfig()V
    .locals 2

    .line 167
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 168
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 169
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mGlobalConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mOverrideConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .line 183
    instance-of v0, p1, Landroid/util/MergedConfiguration;

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x0

    return v0

    .line 187
    :cond_0
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 188
    :cond_1
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    move-object v1, p1

    check-cast v1, Landroid/util/MergedConfiguration;

    iget-object v1, v1, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o getGlobalConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 148
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public greylist-max-o getMergedConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 162
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public greylist-max-o getOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 155
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 178
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 75
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 76
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 77
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 80
    invoke-virtual {p0, p1}, Landroid/util/MergedConfiguration;->readParcel(Landroid/os/Parcel;)V

    .line 82
    return-void
.end method

.method public greylist-max-o setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "globalConfig"    # Landroid/content/res/Configuration;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 108
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 109
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 110
    invoke-direct {p0}, Landroid/util/MergedConfiguration;->updateMergedConfig()V

    .line 111
    return-void
.end method

.method public greylist-max-o setGlobalConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "globalConfig"    # Landroid/content/res/Configuration;

    .line 119
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 120
    invoke-direct {p0}, Landroid/util/MergedConfiguration;->updateMergedConfig()V

    .line 121
    return-void
.end method

.method public greylist-max-o setOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 129
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 130
    invoke-direct {p0}, Landroid/util/MergedConfiguration;->updateMergedConfig()V

    .line 131
    return-void
.end method

.method public greylist-max-o setTo(Landroid/util/MergedConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/util/MergedConfiguration;

    .line 134
    iget-object v0, p1, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    iget-object v1, p1, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, v1}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 135
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mGlobalConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mOverrideConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o unset()V
    .locals 1

    .line 138
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 139
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 140
    invoke-direct {p0}, Landroid/util/MergedConfiguration;->updateMergedConfig()V

    .line 141
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 65
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 66
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    invoke-virtual {p0, p1, p2}, Landroid/util/MergedConfiguration;->writeParcel(Landroid/os/Parcel;I)V

    .line 72
    return-void
.end method
