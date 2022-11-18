.class Landroid/graphics/drawable/VectorDrawable$VGroup$VGroupWrapper;
.super Ljava/lang/Object;
.source "VectorDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/IVGroupWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable$VGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VGroupWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/drawable/VectorDrawable$VGroup;


# direct methods
.method private constructor blacklist <init>(Landroid/graphics/drawable/VectorDrawable$VGroup;)V
    .locals 0

    .line 1630
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup$VGroupWrapper;->this$0:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/graphics/drawable/VectorDrawable$VGroup$VGroupWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VGroup$VGroupWrapper;-><init>(Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    return-void
.end method


# virtual methods
.method public blacklist getChildren()Ljava/util/ArrayList;
    .locals 1

    .line 1633
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup$VGroupWrapper;->this$0:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-static {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-$$Nest$fgetmChildren(Landroid/graphics/drawable/VectorDrawable$VGroup;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
