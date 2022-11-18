.class Landroid/app/ActivityThreadSocExtImpl$StaticExtImpl$LazyHolder;
.super Ljava/lang/Object;
.source "ActivityThreadSocExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThreadSocExtImpl$StaticExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/app/ActivityThreadSocExtImpl$StaticExtImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/app/ActivityThreadSocExtImpl$StaticExtImpl;
    .locals 1

    sget-object v0, Landroid/app/ActivityThreadSocExtImpl$StaticExtImpl$LazyHolder;->INSTANCE:Landroid/app/ActivityThreadSocExtImpl$StaticExtImpl;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 119
    new-instance v0, Landroid/app/ActivityThreadSocExtImpl$StaticExtImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThreadSocExtImpl$StaticExtImpl;-><init>(Landroid/app/ActivityThreadSocExtImpl$StaticExtImpl-IA;)V

    sput-object v0, Landroid/app/ActivityThreadSocExtImpl$StaticExtImpl$LazyHolder;->INSTANCE:Landroid/app/ActivityThreadSocExtImpl$StaticExtImpl;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
