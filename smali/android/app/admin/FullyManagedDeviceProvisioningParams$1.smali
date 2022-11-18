.class Landroid/app/admin/FullyManagedDeviceProvisioningParams$1;
.super Ljava/lang/Object;
.source "FullyManagedDeviceProvisioningParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/FullyManagedDeviceProvisioningParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/FullyManagedDeviceProvisioningParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/FullyManagedDeviceProvisioningParams;
    .locals 24
    .param p1, "in"    # Landroid/os/Parcel;

    .line 384
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 385
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 386
    .local v14, "ownerName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 387
    .local v15, "leaveAllSystemAppsEnabled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 388
    .local v16, "timeZone":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 389
    .local v17, "localtime":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 390
    .local v19, "locale":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 391
    .local v20, "deviceOwnerCanGrantSensorsPermissions":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v21

    .line 392
    .local v21, "adminExtras":Landroid/os/PersistableBundle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 394
    .local v22, "demoDevice":Z
    new-instance v23, Landroid/app/admin/FullyManagedDeviceProvisioningParams;

    const/4 v13, 0x0

    move-object/from16 v2, v23

    move-object v3, v0

    move-object v4, v14

    move v5, v15

    move-object/from16 v6, v16

    move-wide/from16 v7, v17

    move-object/from16 v9, v19

    move/from16 v10, v20

    move-object/from16 v11, v21

    move/from16 v12, v22

    invoke-direct/range {v2 .. v13}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;-><init>(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/lang/String;JLjava/lang/String;ZLandroid/os/PersistableBundle;ZLandroid/app/admin/FullyManagedDeviceProvisioningParams-IA;)V

    return-object v23
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 381
    invoke-virtual {p0, p1}, Landroid/app/admin/FullyManagedDeviceProvisioningParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/FullyManagedDeviceProvisioningParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/admin/FullyManagedDeviceProvisioningParams;
    .locals 1
    .param p1, "size"    # I

    .line 408
    new-array v0, p1, [Landroid/app/admin/FullyManagedDeviceProvisioningParams;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 381
    invoke-virtual {p0, p1}, Landroid/app/admin/FullyManagedDeviceProvisioningParams$1;->newArray(I)[Landroid/app/admin/FullyManagedDeviceProvisioningParams;

    move-result-object p1

    return-object p1
.end method
