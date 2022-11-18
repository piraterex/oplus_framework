.class Landroid/app/backup/FullBackup$BackupSchemeId;
.super Ljava/lang/Object;
.source "FullBackup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/FullBackup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackupSchemeId"
.end annotation


# instance fields
.field final blacklist mOperationType:I

.field final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "operationType"    # I

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mPackageName:Ljava/lang/String;

    .line 134
    iput p2, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mOperationType:I

    .line 135
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 144
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 145
    return v0

    .line 147
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 150
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/backup/FullBackup$BackupSchemeId;

    .line 151
    .local v2, "that":Landroid/app/backup/FullBackup$BackupSchemeId;
    iget-object v3, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/backup/FullBackup$BackupSchemeId;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mOperationType:I

    .line 152
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/app/backup/FullBackup$BackupSchemeId;->mOperationType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 151
    :goto_0
    return v0

    .line 148
    .end local v2    # "that":Landroid/app/backup/FullBackup$BackupSchemeId;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mOperationType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
