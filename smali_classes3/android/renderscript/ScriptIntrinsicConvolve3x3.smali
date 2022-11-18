.class public final Landroid/renderscript/ScriptIntrinsicConvolve3x3;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicConvolve3x3.java"


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

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 28
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    .line 33
    return-void
.end method

.method public static whitelist create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicConvolve3x3;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;

    .line 54
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 55
    .local v0, "f":[F
    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    invoke-static {p0}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    invoke-static {p0}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    invoke-static {p0}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    invoke-static {p0}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Unsupported element type."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_1
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v1

    .line 66
    .local v1, "id":J
    new-instance v3, Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    invoke-direct {v3, v1, v2, p0}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 67
    .local v3, "si":Landroid/renderscript/ScriptIntrinsicConvolve3x3;
    invoke-virtual {v3, v0}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setCoefficients([F)V

    .line 68
    return-object v3

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public whitelist forEach(Landroid/renderscript/Allocation;)V
    .locals 2
    .param p1, "aout"    # Landroid/renderscript/Allocation;

    .line 112
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/renderscript/Allocation;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, v0}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    .line 113
    return-void
.end method

.method public whitelist forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "aout"    # Landroid/renderscript/Allocation;
    .param p2, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 124
    const/4 v2, 0x0

    move-object v0, v2

    check-cast v0, Landroid/renderscript/Allocation;

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 125
    return-void
.end method

.method public whitelist getFieldID_Input()Landroid/renderscript/Script$FieldID;
    .locals 2

    .line 142
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKernelID()Landroid/renderscript/Script$KernelID;
    .locals 3

    .line 133
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setCoefficients([F)V
    .locals 4
    .param p1, "v"    # [F

    .line 96
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 97
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    const/4 v1, 0x0

    .local v1, "ct":I
    :goto_0
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 98
    aget v3, p1, v1

    aput v3, v2, v1

    .line 99
    invoke-virtual {v0, v3}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "ct":I
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 102
    return-void
.end method

.method public whitelist setInput(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;

    .line 79
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mInput:Landroid/renderscript/Allocation;

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 81
    return-void
.end method
