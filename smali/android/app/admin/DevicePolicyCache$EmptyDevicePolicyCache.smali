.class Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;
.super Landroid/app/admin/DevicePolicyCache;
.source "DevicePolicyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyDevicePolicyCache"
.end annotation


# static fields
.field private static final greylist-max-o INSTANCE:Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;
    .locals 1

    sget-object v0, Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;->INSTANCE:Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;

    invoke-direct {v0}, Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;-><init>()V

    sput-object v0, Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;->INSTANCE:Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyCache;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist canAdminGrantSensorsPermissionsForUser(I)Z
    .locals 1
    .param p1, "userHandle"    # I

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPasswordQuality(I)I
    .locals 1
    .param p1, "userHandle"    # I

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPermissionPolicy(I)I
    .locals 1
    .param p1, "userHandle"    # I

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isScreenCaptureAllowed(I)Z
    .locals 1
    .param p1, "userHandle"    # I

    .line 73
    const/4 v0, 0x1

    return v0
.end method
