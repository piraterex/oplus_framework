.class public Landroid/renderscript/Script$FieldBase;
.super Ljava/lang/Object;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldBase"
.end annotation


# instance fields
.field protected whitelist mAllocation:Landroid/renderscript/Allocation;

.field protected whitelist mElement:Landroid/renderscript/Element;


# direct methods
.method protected constructor whitelist <init>()V
    .locals 0

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    return-void
.end method


# virtual methods
.method public whitelist getAllocation()Landroid/renderscript/Allocation;
    .locals 1

    .line 525
    iget-object v0, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public whitelist getElement()Landroid/renderscript/Element;
    .locals 1

    .line 517
    iget-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    return-object v0
.end method

.method public whitelist getType()Landroid/renderscript/Type;
    .locals 1

    .line 521
    iget-object v0, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist init(Landroid/renderscript/RenderScript;I)V
    .locals 2
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "dimx"    # I

    .line 503
    iget-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    const/4 v1, 0x1

    invoke-static {p1, v0, p2, v1}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 505
    return-void
.end method

.method protected whitelist init(Landroid/renderscript/RenderScript;II)V
    .locals 2
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "dimx"    # I
    .param p3, "usages"    # I

    .line 508
    iget-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    or-int/lit8 v1, p3, 0x1

    .line 509
    invoke-static {p1, v0, p2, v1}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 511
    return-void
.end method

.method public whitelist updateAllocation()V
    .locals 0

    .line 530
    return-void
.end method
