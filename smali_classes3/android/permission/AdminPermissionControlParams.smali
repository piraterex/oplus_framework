.class public final Landroid/permission/AdminPermissionControlParams;
.super Ljava/lang/Object;
.source "AdminPermissionControlParams.java"

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
            "Landroid/permission/AdminPermissionControlParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCanAdminGrantSensorsPermissions:Z

.field private final blacklist mGrantState:I

.field private final blacklist mGranteePackageName:Ljava/lang/String;

.field private final blacklist mPermission:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Landroid/permission/AdminPermissionControlParams$1;

    invoke-direct {v0}, Landroid/permission/AdminPermissionControlParams$1;-><init>()V

    sput-object v0, Landroid/permission/AdminPermissionControlParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "granteePackageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "grantState"    # I
    .param p4, "canAdminGrantSensorsPermissions"    # Z

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "Package name must not be empty."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 62
    const-string v0, "Permission must not be empty."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 63
    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 67
    iput-object p1, p0, Landroid/permission/AdminPermissionControlParams;->mGranteePackageName:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Landroid/permission/AdminPermissionControlParams;->mPermission:Ljava/lang/String;

    .line 69
    iput p3, p0, Landroid/permission/AdminPermissionControlParams;->mGrantState:I

    .line 70
    iput-boolean p4, p0, Landroid/permission/AdminPermissionControlParams;->mCanAdminGrantSensorsPermissions:Z

    .line 71
    return-void
.end method


# virtual methods
.method public whitelist canAdminGrantSensorsPermissions()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Landroid/permission/AdminPermissionControlParams;->mCanAdminGrantSensorsPermissions:Z

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getGrantState()I
    .locals 1

    .line 117
    iget v0, p0, Landroid/permission/AdminPermissionControlParams;->mGrantState:I

    return v0
.end method

.method public whitelist getGranteePackageName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Landroid/permission/AdminPermissionControlParams;->mGranteePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPermission()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Landroid/permission/AdminPermissionControlParams;->mPermission:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 129
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/permission/AdminPermissionControlParams;->mGranteePackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/permission/AdminPermissionControlParams;->mPermission:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/permission/AdminPermissionControlParams;->mGrantState:I

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/permission/AdminPermissionControlParams;->mCanAdminGrantSensorsPermissions:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 129
    const-string v1, "Grantee %s Permission %s state: %d admin grant of sensors permissions: %b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 99
    iget-object v0, p0, Landroid/permission/AdminPermissionControlParams;->mGranteePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Landroid/permission/AdminPermissionControlParams;->mPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget v0, p0, Landroid/permission/AdminPermissionControlParams;->mGrantState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-boolean v0, p0, Landroid/permission/AdminPermissionControlParams;->mCanAdminGrantSensorsPermissions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 103
    return-void
.end method
