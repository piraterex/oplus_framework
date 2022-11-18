.class public final Landroid/os/storage/StorageVolume$Builder;
.super Ljava/lang/Object;
.source "StorageVolume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageVolume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mEmulated:Z

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mOwner:Landroid/os/UserHandle;

.field private blacklist mPath:Ljava/io/File;

.field private blacklist mPrimary:Z

.field private blacklist mRemovable:Z

.field private blacklist mState:Ljava/lang/String;

.field private blacklist mStorageUuid:Ljava/util/UUID;

.field private blacklist mUuid:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "owner"    # Landroid/os/UserHandle;
    .param p5, "state"    # Ljava/lang/String;

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    iput-object p1, p0, Landroid/os/storage/StorageVolume$Builder;->mId:Ljava/lang/String;

    .line 617
    iput-object p2, p0, Landroid/os/storage/StorageVolume$Builder;->mPath:Ljava/io/File;

    .line 618
    iput-object p3, p0, Landroid/os/storage/StorageVolume$Builder;->mDescription:Ljava/lang/String;

    .line 619
    iput-object p4, p0, Landroid/os/storage/StorageVolume$Builder;->mOwner:Landroid/os/UserHandle;

    .line 620
    iput-object p5, p0, Landroid/os/storage/StorageVolume$Builder;->mState:Ljava/lang/String;

    .line 621
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/os/storage/StorageVolume;
    .locals 20

    .line 655
    move-object/from16 v0, p0

    new-instance v17, Landroid/os/storage/StorageVolume;

    iget-object v2, v0, Landroid/os/storage/StorageVolume$Builder;->mId:Ljava/lang/String;

    iget-object v4, v0, Landroid/os/storage/StorageVolume$Builder;->mPath:Ljava/io/File;

    iget-object v5, v0, Landroid/os/storage/StorageVolume$Builder;->mDescription:Ljava/lang/String;

    iget-boolean v6, v0, Landroid/os/storage/StorageVolume$Builder;->mPrimary:Z

    iget-boolean v7, v0, Landroid/os/storage/StorageVolume$Builder;->mRemovable:Z

    iget-boolean v8, v0, Landroid/os/storage/StorageVolume$Builder;->mEmulated:Z

    iget-object v13, v0, Landroid/os/storage/StorageVolume$Builder;->mOwner:Landroid/os/UserHandle;

    iget-object v14, v0, Landroid/os/storage/StorageVolume$Builder;->mStorageUuid:Ljava/util/UUID;

    iget-object v15, v0, Landroid/os/storage/StorageVolume$Builder;->mUuid:Ljava/lang/String;

    iget-object v11, v0, Landroid/os/storage/StorageVolume$Builder;->mState:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v1, v17

    move-object v3, v4

    move-object/from16 v16, v11

    move-wide/from16 v11, v18

    invoke-direct/range {v1 .. v16}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZZZZJLandroid/os/UserHandle;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    return-object v17
.end method

.method public blacklist setEmulated(Z)Landroid/os/storage/StorageVolume$Builder;
    .locals 0
    .param p1, "emulated"    # Z

    .line 649
    iput-boolean p1, p0, Landroid/os/storage/StorageVolume$Builder;->mEmulated:Z

    .line 650
    return-object p0
.end method

.method public blacklist setPrimary(Z)Landroid/os/storage/StorageVolume$Builder;
    .locals 0
    .param p1, "primary"    # Z

    .line 637
    iput-boolean p1, p0, Landroid/os/storage/StorageVolume$Builder;->mPrimary:Z

    .line 638
    return-object p0
.end method

.method public blacklist setRemovable(Z)Landroid/os/storage/StorageVolume$Builder;
    .locals 0
    .param p1, "removable"    # Z

    .line 643
    iput-boolean p1, p0, Landroid/os/storage/StorageVolume$Builder;->mRemovable:Z

    .line 644
    return-object p0
.end method

.method public blacklist setStorageUuid(Ljava/util/UUID;)Landroid/os/storage/StorageVolume$Builder;
    .locals 0
    .param p1, "storageUuid"    # Ljava/util/UUID;

    .line 625
    iput-object p1, p0, Landroid/os/storage/StorageVolume$Builder;->mStorageUuid:Ljava/util/UUID;

    .line 626
    return-object p0
.end method

.method public blacklist setUuid(Ljava/lang/String;)Landroid/os/storage/StorageVolume$Builder;
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .line 631
    iput-object p1, p0, Landroid/os/storage/StorageVolume$Builder;->mUuid:Ljava/lang/String;

    .line 632
    return-object p0
.end method
