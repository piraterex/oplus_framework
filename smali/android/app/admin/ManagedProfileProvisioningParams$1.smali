.class Landroid/app/admin/ManagedProfileProvisioningParams$1;
.super Ljava/lang/Object;
.source "ManagedProfileProvisioningParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/ManagedProfileProvisioningParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/ManagedProfileProvisioningParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/ManagedProfileProvisioningParams;
    .locals 20
    .param p1, "in"    # Landroid/os/Parcel;

    .line 320
    move-object/from16 v0, p1

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 321
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 322
    .local v12, "ownerName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 323
    .local v13, "profileName":Ljava/lang/String;
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/accounts/Account;

    .line 324
    .local v14, "account":Landroid/accounts/Account;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 325
    .local v15, "leaveAllSystemAppsEnabled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 326
    .local v16, "organizationOwnedProvisioning":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 327
    .local v17, "keepAccountMigrated":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v18

    .line 329
    .local v18, "adminExtras":Landroid/os/PersistableBundle;
    new-instance v19, Landroid/app/admin/ManagedProfileProvisioningParams;

    const/4 v11, 0x0

    move-object/from16 v2, v19

    move-object v3, v1

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move v7, v15

    move/from16 v8, v16

    move/from16 v9, v17

    move-object/from16 v10, v18

    invoke-direct/range {v2 .. v11}, Landroid/app/admin/ManagedProfileProvisioningParams;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ZZZLandroid/os/PersistableBundle;Landroid/app/admin/ManagedProfileProvisioningParams-IA;)V

    return-object v19
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 317
    invoke-virtual {p0, p1}, Landroid/app/admin/ManagedProfileProvisioningParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/ManagedProfileProvisioningParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/admin/ManagedProfileProvisioningParams;
    .locals 1
    .param p1, "size"    # I

    .line 342
    new-array v0, p1, [Landroid/app/admin/ManagedProfileProvisioningParams;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 317
    invoke-virtual {p0, p1}, Landroid/app/admin/ManagedProfileProvisioningParams$1;->newArray(I)[Landroid/app/admin/ManagedProfileProvisioningParams;

    move-result-object p1

    return-object p1
.end method
