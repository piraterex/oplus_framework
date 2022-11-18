.class public final Landroid/service/pm/PackageProto$UserInfoProto;
.super Ljava/lang/Object;
.source "PackageProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/pm/PackageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UserInfoProto"
.end annotation


# static fields
.field public static final blacklist COMPONENT_ENABLED_STATE_DEFAULT:I = 0x0

.field public static final blacklist COMPONENT_ENABLED_STATE_DISABLED:I = 0x2

.field public static final blacklist COMPONENT_ENABLED_STATE_DISABLED_UNTIL_USED:I = 0x4

.field public static final blacklist COMPONENT_ENABLED_STATE_DISABLED_USER:I = 0x3

.field public static final blacklist COMPONENT_ENABLED_STATE_ENABLED:I = 0x1

.field public static final blacklist DISTRACTION_FLAGS:J = 0x1050000000aL

.field public static final blacklist ENABLED_STATE:J = 0x10e00000007L

.field public static final blacklist FIRST_INSTALL_TIME_MS:J = 0x1050000000bL

.field public static final blacklist FULL_APP_INSTALL:I = 0x1

.field public static final blacklist ID:J = 0x10500000001L

.field public static final blacklist INSTALL_TYPE:J = 0x10e00000002L

.field public static final blacklist INSTANT_APP_INSTALL:I = 0x2

.field public static final blacklist IS_HIDDEN:J = 0x10800000003L

.field public static final blacklist IS_LAUNCHED:J = 0x10800000006L

.field public static final blacklist IS_STOPPED:J = 0x10800000005L

.field public static final blacklist IS_SUSPENDED:J = 0x10800000004L

.field public static final blacklist LAST_DISABLED_APP_CALLER:J = 0x10900000008L

.field public static final blacklist NOT_INSTALLED_FOR_USER:I = 0x0

.field public static final blacklist SUSPENDING_PACKAGE:J = 0x20900000009L


# instance fields
.field final synthetic blacklist this$0:Landroid/service/pm/PackageProto;


# direct methods
.method public constructor blacklist <init>(Landroid/service/pm/PackageProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/pm/PackageProto;

    .line 22
    iput-object p1, p0, Landroid/service/pm/PackageProto$UserInfoProto;->this$0:Landroid/service/pm/PackageProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
