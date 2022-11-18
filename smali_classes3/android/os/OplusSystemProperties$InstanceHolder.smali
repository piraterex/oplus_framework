.class Landroid/os/OplusSystemProperties$InstanceHolder;
.super Ljava/lang/Object;
.source "OplusSystemProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OplusSystemProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field static blacklist INSTANCE:Landroid/os/OplusSystemProperties;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Landroid/os/OplusSystemProperties;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/OplusSystemProperties;-><init>(Landroid/os/OplusSystemProperties-IA;)V

    sput-object v0, Landroid/os/OplusSystemProperties$InstanceHolder;->INSTANCE:Landroid/os/OplusSystemProperties;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
