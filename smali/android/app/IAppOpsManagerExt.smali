.class public interface abstract Landroid/app/IAppOpsManagerExt;
.super Ljava/lang/Object;
.source "IAppOpsManagerExt.java"


# static fields
.field public static final blacklist CUSTOM_NUM_OP:I = 0x2712

.field public static final blacklist OPSTR_GET_INSTALLED_APPS:Ljava/lang/String; = "android:get_installed_apps"

.field public static final blacklist OP_CUSTOM_NONE:I = 0x2710

.field public static final blacklist OP_GET_INSTALLED_APPS:I = 0x2711

.field public static final blacklist sCustomOpAllowSystemRestrictionBypass:[Landroid/app/AppOpsManager$RestrictionBypass;

.field public static final blacklist sCustomOpDefaultMode:[I

.field public static final blacklist sCustomOpDisableReset:[Z

.field public static final blacklist sCustomOpNames:[Ljava/lang/String;

.field public static final blacklist sCustomOpPerms:[Ljava/lang/String;

.field public static final blacklist sCustomOpRestrictions:[Ljava/lang/String;

.field public static final blacklist sCustomOpStrToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist sCustomOpToString:[Ljava/lang/String;

.field public static final blacklist sCustomOpToSwitch:[I

.field public static final blacklist sCustomRuntimeOps:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 36
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x2711

    aput v3, v1, v2

    sput-object v1, Landroid/app/IAppOpsManagerExt;->sCustomOpToSwitch:[I

    .line 44
    const-string v1, "android:get_installed_apps"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/app/IAppOpsManagerExt;->sCustomOpToString:[Ljava/lang/String;

    .line 53
    const-string v1, "GET_INSTALLED_APPS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/app/IAppOpsManagerExt;->sCustomOpNames:[Ljava/lang/String;

    .line 57
    new-array v1, v0, [I

    aput v3, v1, v2

    sput-object v1, Landroid/app/IAppOpsManagerExt;->sCustomRuntimeOps:[I

    .line 67
    const-string v1, "com.android.permission.GET_INSTALLED_APPS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/app/IAppOpsManagerExt;->sCustomOpPerms:[Ljava/lang/String;

    .line 77
    const/4 v1, 0x0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/app/IAppOpsManagerExt;->sCustomOpRestrictions:[Ljava/lang/String;

    .line 86
    new-array v3, v0, [Landroid/app/AppOpsManager$RestrictionBypass;

    aput-object v1, v3, v2

    sput-object v3, Landroid/app/IAppOpsManagerExt;->sCustomOpAllowSystemRestrictionBypass:[Landroid/app/AppOpsManager$RestrictionBypass;

    .line 94
    new-array v1, v0, [I

    const/4 v3, 0x3

    aput v3, v1, v2

    sput-object v1, Landroid/app/IAppOpsManagerExt;->sCustomOpDefaultMode:[I

    .line 106
    new-array v0, v0, [Z

    aput-boolean v2, v0, v2

    sput-object v0, Landroid/app/IAppOpsManagerExt;->sCustomOpDisableReset:[Z

    .line 114
    new-instance v0, Landroid/app/IAppOpsManagerExt$1;

    invoke-direct {v0}, Landroid/app/IAppOpsManagerExt$1;-><init>()V

    sput-object v0, Landroid/app/IAppOpsManagerExt;->sCustomOpStrToOp:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public blacklist getAllOpStrs([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p1, "strs"    # [Ljava/lang/String;

    .line 141
    return-object p1
.end method

.method public blacklist getCustomOpAllowReset(I)Z
    .locals 1
    .param p1, "op"    # I

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCustomOpAllowSystemBypassRestriction(I)Landroid/app/AppOpsManager$RestrictionBypass;
    .locals 1
    .param p1, "op"    # I

    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCustomOpToDefaultMode(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "op"    # I

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCustomOpToName(I)Ljava/lang/String;
    .locals 1
    .param p1, "op"    # I

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCustomOpToPermission(I)Ljava/lang/String;
    .locals 1
    .param p1, "op"    # I

    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCustomOpToPublicName(I)Ljava/lang/String;
    .locals 1
    .param p1, "op"    # I

    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCustomOpToRestriction(I)Ljava/lang/String;
    .locals 1
    .param p1, "op"    # I

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCustomOpToSwitch(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "op"    # I

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCustomPermissionToOp(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p1, "opCode"    # Ljava/lang/Integer;

    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCustomStrDebugOpToOp(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "op"    # Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCustomOpChanged(Landroid/app/AppOpsManager$OnOpChangedListener;ILjava/lang/String;)Z
    .locals 1
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;
    .param p2, "op"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist putCustomOpStrToOp(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    return-void
.end method

.method public blacklist putCustomRuntimeOps(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 119
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    return-void
.end method
