.class public Landroid/app/ContextImplSocExtImpl$StaticExtImpl$SingleHolder;
.super Ljava/lang/Object;
.source "ContextImplSocExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImplSocExtImpl$StaticExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleHolder"
.end annotation


# static fields
.field private static final blacklist INSTACNE:Landroid/app/ContextImplSocExtImpl$StaticExtImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTACNE()Landroid/app/ContextImplSocExtImpl$StaticExtImpl;
    .locals 1

    sget-object v0, Landroid/app/ContextImplSocExtImpl$StaticExtImpl$SingleHolder;->INSTACNE:Landroid/app/ContextImplSocExtImpl$StaticExtImpl;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Landroid/app/ContextImplSocExtImpl$StaticExtImpl;

    invoke-direct {v0}, Landroid/app/ContextImplSocExtImpl$StaticExtImpl;-><init>()V

    sput-object v0, Landroid/app/ContextImplSocExtImpl$StaticExtImpl$SingleHolder;->INSTACNE:Landroid/app/ContextImplSocExtImpl$StaticExtImpl;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
