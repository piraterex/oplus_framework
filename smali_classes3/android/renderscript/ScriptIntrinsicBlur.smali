.class public final Landroid/renderscript/ScriptIntrinsicBlur;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicBlur.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mInput:Landroid/renderscript/Allocation;

.field private final greylist-max-o mValues:[F


# direct methods
.method private constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 29
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/ScriptIntrinsicBlur;->mValues:[F

    .line 34
    return-void
.end method

.method public static whitelist create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;

    .line 49
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Unsupported element type."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    :goto_0
    const/4 v0, 0x5

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v0

    .line 53
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicBlur;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 54
    .local v2, "sib":Landroid/renderscript/ScriptIntrinsicBlur;
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 55
    return-object v2
.end method


# virtual methods
.method public whitelist forEach(Landroid/renderscript/Allocation;)V
    .locals 3
    .param p1, "aout"    # Landroid/renderscript/Allocation;

    .line 98
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/renderscript/Allocation;

    invoke-virtual {p0, v0, v1, p1, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    .line 102
    return-void

    .line 99
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Output is a 1D Allocation"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 7
    .param p1, "aout"    # Landroid/renderscript/Allocation;
    .param p2, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 113
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v3

    check-cast v0, Landroid/renderscript/Allocation;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 117
    return-void

    .line 114
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Output is a 1D Allocation"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFieldID_Input()Landroid/renderscript/Script$FieldID;
    .locals 2

    .line 135
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKernelID()Landroid/renderscript/Script$KernelID;
    .locals 3

    .line 126
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setInput(Landroid/renderscript/Allocation;)V
    .locals 3
    .param p1, "ain"    # Landroid/renderscript/Allocation;

    .line 65
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    .line 69
    .local v0, "e":Landroid/renderscript/Element;
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicBlur;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicBlur;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Unsupported element type."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicBlur;->mInput:Landroid/renderscript/Allocation;

    .line 73
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 74
    return-void

    .line 66
    .end local v0    # "e":Landroid/renderscript/Element;
    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Input set to a 1D Allocation"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRadius(F)V
    .locals 2
    .param p1, "radius"    # F

    .line 84
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x41c80000    # 25.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setVar(IF)V

    .line 88
    return-void

    .line 85
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Radius out of range (0 < r <= 25)."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
