.class Landroid/graphics/Path$PathWrapper;
.super Ljava/lang/Object;
.source "Path.java"

# interfaces
.implements Landroid/graphics/IPathWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PathWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/Path;


# direct methods
.method private constructor blacklist <init>(Landroid/graphics/Path;)V
    .locals 0

    .line 936
    iput-object p1, p0, Landroid/graphics/Path$PathWrapper;->this$0:Landroid/graphics/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/Path;Landroid/graphics/Path$PathWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/Path$PathWrapper;-><init>(Landroid/graphics/Path;)V

    return-void
.end method


# virtual methods
.method public blacklist getPathExt()Landroid/graphics/IPathExt;
    .locals 1

    .line 941
    iget-object v0, p0, Landroid/graphics/Path$PathWrapper;->this$0:Landroid/graphics/Path;

    iget-object v0, v0, Landroid/graphics/Path;->mPathExt:Landroid/graphics/IPathExt;

    return-object v0
.end method
