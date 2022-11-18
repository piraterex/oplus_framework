.class Landroid/os/Binder$NoImagePreloadHolder;
.super Ljava/lang/Object;
.source "Binder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Binder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoImagePreloadHolder"
.end annotation


# static fields
.field public static final greylist-max-o sRegistry:Llibcore/util/NativeAllocationRegistry;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 155
    new-instance v6, Llibcore/util/NativeAllocationRegistry;

    const-class v0, Landroid/os/Binder;

    .line 156
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->-$$Nest$smgetNativeFinalizer()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v6, Landroid/os/Binder$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 155
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
