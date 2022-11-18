.class public Landroid/app/ContextImplSocExtImpl$StaticExtImpl;
.super Ljava/lang/Object;
.source "ContextImplSocExtImpl.java"

# interfaces
.implements Landroid/app/IContextImplSocExt$IStaticExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImplSocExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaticExtImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ContextImplSocExtImpl$StaticExtImpl$SingleHolder;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static whitelist getInstance(Ljava/lang/Object;)Landroid/app/ContextImplSocExtImpl$StaticExtImpl;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 18
    invoke-static {}, Landroid/app/ContextImplSocExtImpl$StaticExtImpl$SingleHolder;->-$$Nest$sfgetINSTACNE()Landroid/app/ContextImplSocExtImpl$StaticExtImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist hookcreateAppContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    return-void
.end method
