.class public Landroid/app/ActivityThreadSocExtImpl$StaticExtImpl;
.super Ljava/lang/Object;
.source "ActivityThreadSocExtImpl.java"

# interfaces
.implements Landroid/app/IActivityThreadSocExt$IStaticExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThreadSocExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaticExtImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThreadSocExtImpl$StaticExtImpl$LazyHolder;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ActivityThreadSocExtImpl$StaticExtImpl-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityThreadSocExtImpl$StaticExtImpl;-><init>()V

    return-void
.end method

.method public static whitelist getInstance(Ljava/lang/Object;)Landroid/app/ActivityThreadSocExtImpl$StaticExtImpl;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 115
    invoke-static {}, Landroid/app/ActivityThreadSocExtImpl$StaticExtImpl$LazyHolder;->-$$Nest$sfgetINSTANCE()Landroid/app/ActivityThreadSocExtImpl$StaticExtImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist setMessageLogger()V
    .locals 0

    .line 124
    return-void
.end method
