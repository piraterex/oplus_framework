.class Landroid/hardware/display/OplusDisplayManager$LazyHolder;
.super Ljava/lang/Object;
.source "OplusDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/OplusDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/hardware/display/OplusDisplayManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/hardware/display/OplusDisplayManager;
    .locals 1

    sget-object v0, Landroid/hardware/display/OplusDisplayManager$LazyHolder;->INSTANCE:Landroid/hardware/display/OplusDisplayManager;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Landroid/hardware/display/OplusDisplayManager;

    invoke-direct {v0}, Landroid/hardware/display/OplusDisplayManager;-><init>()V

    sput-object v0, Landroid/hardware/display/OplusDisplayManager$LazyHolder;->INSTANCE:Landroid/hardware/display/OplusDisplayManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
