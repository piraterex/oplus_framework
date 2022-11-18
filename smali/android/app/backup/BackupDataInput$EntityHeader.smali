.class Landroid/app/backup/BackupDataInput$EntityHeader;
.super Ljava/lang/Object;
.source "BackupDataInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupDataInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityHeader"
.end annotation


# instance fields
.field greylist dataSize:I

.field greylist key:Ljava/lang/String;


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/backup/BackupDataInput$EntityHeader-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/backup/BackupDataInput$EntityHeader;-><init>()V

    return-void
.end method
