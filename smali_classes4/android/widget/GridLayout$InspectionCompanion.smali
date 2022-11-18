.class public final Landroid/widget/GridLayout$InspectionCompanion;
.super Ljava/lang/Object;
.source "GridLayout$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/GridLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mAlignmentModeId:I

.field private blacklist mColumnCountId:I

.field private blacklist mColumnOrderPreservedId:I

.field private blacklist mOrientationId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mRowCountId:I

.field private blacklist mRowOrderPreservedId:I

.field private blacklist mUseDefaultMarginsId:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 6
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 61
    .local v0, "alignmentModeEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const-string v2, "alignBounds"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    const/4 v2, 0x1

    const-string v3, "alignMargins"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v4, "alignmentMode"

    const v5, 0x101037a

    invoke-interface {p1, v4, v5, v3}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v3

    iput v3, p0, Landroid/widget/GridLayout$InspectionCompanion;->mAlignmentModeId:I

    .line 64
    const-string v3, "columnCount"

    const v4, 0x1010377

    invoke-interface {p1, v3, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/widget/GridLayout$InspectionCompanion;->mColumnCountId:I

    .line 65
    const-string v3, "columnOrderPreserved"

    const v4, 0x1010378

    invoke-interface {p1, v3, v4}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/widget/GridLayout$InspectionCompanion;->mColumnOrderPreservedId:I

    .line 66
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 67
    .local v3, "orientationEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v4, "horizontal"

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    const-string/jumbo v1, "vertical"

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v1, v3}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v4, "orientation"

    const v5, 0x10100c4

    invoke-interface {p1, v4, v5, v1}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v1

    iput v1, p0, Landroid/widget/GridLayout$InspectionCompanion;->mOrientationId:I

    .line 70
    const-string/jumbo v1, "rowCount"

    const v4, 0x1010375

    invoke-interface {p1, v1, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/widget/GridLayout$InspectionCompanion;->mRowCountId:I

    .line 71
    const-string/jumbo v1, "rowOrderPreserved"

    const v4, 0x1010376

    invoke-interface {p1, v1, v4}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/widget/GridLayout$InspectionCompanion;->mRowOrderPreservedId:I

    .line 72
    const-string/jumbo v1, "useDefaultMargins"

    const v4, 0x1010379

    invoke-interface {p1, v1, v4}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/widget/GridLayout$InspectionCompanion;->mUseDefaultMarginsId:I

    .line 73
    iput-boolean v2, p0, Landroid/widget/GridLayout$InspectionCompanion;->mPropertiesMapped:Z

    .line 74
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/GridLayout;Landroid/view/inspector/PropertyReader;)V
    .locals 2
    .param p1, "node"    # Landroid/widget/GridLayout;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 78
    iget-boolean v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    .line 81
    iget v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mAlignmentModeId:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getAlignmentMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 82
    iget v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mColumnCountId:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 83
    iget v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mColumnOrderPreservedId:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->isColumnOrderPreserved()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 84
    iget v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mOrientationId:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getOrientation()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 85
    iget v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mRowCountId:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getRowCount()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 86
    iget v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mRowOrderPreservedId:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->isRowOrderPreserved()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 87
    iget v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mUseDefaultMarginsId:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getUseDefaultMargins()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 88
    return-void

    .line 79
    :cond_0
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .locals 0

    .line 17
    check-cast p1, Landroid/widget/GridLayout;

    invoke-virtual {p0, p1, p2}, Landroid/widget/GridLayout$InspectionCompanion;->readProperties(Landroid/widget/GridLayout;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
