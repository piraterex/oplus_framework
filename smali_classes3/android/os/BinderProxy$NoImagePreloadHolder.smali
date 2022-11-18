.class Landroid/os/BinderProxy$NoImagePreloadHolder;
.super Ljava/lang/Object;
.source "BinderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BinderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoImagePreloadHolder"
.end annotation


# static fields
.field public static final blacklist sNativeFinalizer:J

.field public static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 530
    invoke-static {}, Landroid/os/BinderProxy;->-$$Nest$smgetNativeFinalizer()J

    move-result-wide v2

    sput-wide v2, Landroid/os/BinderProxy$NoImagePreloadHolder;->sNativeFinalizer:J

    .line 531
    new-instance v6, Llibcore/util/NativeAllocationRegistry;

    const-class v0, Landroid/os/BinderProxy;

    .line 532
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-wide/16 v4, 0xbb8

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v6, Landroid/os/BinderProxy$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 531
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
