.class public Lcom/oplus/content/OplusRemovableAppInfo;
.super Ljava/lang/Object;
.source "OplusRemovableAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/content/OplusRemovableAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist baseCodePath:Ljava/lang/String;

.field private blacklist codePath:Ljava/lang/String;

.field private blacklist fileSize:J

.field private blacklist packageName:Ljava/lang/String;

.field private blacklist uninstalled:Z

.field private blacklist versionCode:J

.field private blacklist versionName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/oplus/content/OplusRemovableAppInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/content/OplusRemovableAppInfo;->TAG:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/oplus/content/OplusRemovableAppInfo$1;

    invoke-direct {v0}, Lcom/oplus/content/OplusRemovableAppInfo$1;-><init>()V

    sput-object v0, Lcom/oplus/content/OplusRemovableAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->packageName:Ljava/lang/String;

    .line 31
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/oplus/content/OplusRemovableAppInfo;->versionCode:J

    .line 32
    iput-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->versionName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->codePath:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->baseCodePath:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->uninstalled:Z

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->fileSize:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->packageName:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->versionCode:J

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->versionName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->codePath:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->baseCodePath:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->uninstalled:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->fileSize:J

    .line 50
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->packageName:Ljava/lang/String;

    .line 31
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/oplus/content/OplusRemovableAppInfo;->versionCode:J

    .line 32
    iput-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->versionName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->codePath:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->baseCodePath:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->uninstalled:Z

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->fileSize:J

    .line 39
    iput-object p1, p0, Lcom/oplus/content/OplusRemovableAppInfo;->packageName:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/content/OplusRemovableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/content/OplusRemovableAppInfo;->versionCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/content/OplusRemovableAppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", codePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/content/OplusRemovableAppInfo;->codePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", baseCodePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/content/OplusRemovableAppInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uninstalled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/content/OplusRemovableAppInfo;->uninstalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/content/OplusRemovableAppInfo;->fileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 163
    return-void
.end method

.method public whitelist getBaseCodePath()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->baseCodePath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCodePath()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->codePath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFileSize()J
    .locals 2

    .line 146
    iget-wide v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->fileSize:J

    return-wide v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVersionCode()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->versionCode:J

    return-wide v0
.end method

.method public whitelist getVersionName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isUninstalled()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->uninstalled:Z

    return v0
.end method

.method public whitelist setBaseCodePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseCodePath"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/oplus/content/OplusRemovableAppInfo;->baseCodePath:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public whitelist setCodePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "codePath"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/oplus/content/OplusRemovableAppInfo;->codePath:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public whitelist setFileSize(J)V
    .locals 0
    .param p1, "fileSize"    # J

    .line 150
    iput-wide p1, p0, Lcom/oplus/content/OplusRemovableAppInfo;->fileSize:J

    .line 151
    return-void
.end method

.method public whitelist setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/oplus/content/OplusRemovableAppInfo;->packageName:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public whitelist setUninstalled(Z)V
    .locals 0
    .param p1, "uninstalled"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/oplus/content/OplusRemovableAppInfo;->uninstalled:Z

    .line 143
    return-void
.end method

.method public whitelist setVersionCode(J)V
    .locals 0
    .param p1, "versionCode"    # J

    .line 110
    iput-wide p1, p0, Lcom/oplus/content/OplusRemovableAppInfo;->versionCode:J

    .line 111
    return-void
.end method

.method public whitelist setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/oplus/content/OplusRemovableAppInfo;->versionName:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    iget-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    :goto_0
    iget-wide v2, p0, Lcom/oplus/content/OplusRemovableAppInfo;->versionCode:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    iget-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    :goto_1
    iget-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->codePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->codePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    :goto_2
    iget-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->baseCodePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    :goto_3
    iget-boolean v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->uninstalled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 94
    iget-wide v0, p0, Lcom/oplus/content/OplusRemovableAppInfo;->fileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    return-void
.end method
