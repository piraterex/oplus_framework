.class Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadialTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadialPickerTouchHelper"
.end annotation


# instance fields
.field private final greylist-max-o MASK_TYPE:I

.field private final greylist-max-o MASK_VALUE:I

.field private final greylist-max-o MINUTE_INCREMENT:I

.field private final greylist-max-o SHIFT_TYPE:I

.field private final greylist-max-o SHIFT_VALUE:I

.field private final greylist-max-o TYPE_HOUR:I

.field private final greylist-max-o TYPE_MINUTE:I

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field final synthetic blacklist this$0:Landroid/widget/RadialTimePickerView;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RadialTimePickerView;)V
    .locals 0

    .line 1085
    iput-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 1086
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1071
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1073
    const/4 p1, 0x1

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->TYPE_HOUR:I

    .line 1074
    const/4 p1, 0x2

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->TYPE_MINUTE:I

    .line 1076
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->SHIFT_TYPE:I

    .line 1077
    const/16 p1, 0xf

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MASK_TYPE:I

    .line 1079
    const/16 p1, 0x8

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->SHIFT_VALUE:I

    .line 1080
    const/16 p1, 0xff

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MASK_VALUE:I

    .line 1083
    const/4 p1, 0x5

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MINUTE_INCREMENT:I

    .line 1087
    return-void
.end method

.method private greylist-max-o adjustPicker(I)V
    .locals 7
    .param p1, "step"    # I

    .line 1120
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmShowHours(Landroid/widget/RadialTimePickerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1121
    const/4 v0, 0x1

    .line 1123
    .local v0, "stepSize":I
    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v1

    .line 1124
    .local v1, "currentHour24":I
    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1125
    move v2, v1

    .line 1126
    .local v2, "initialStep":I
    const/4 v3, 0x0

    .line 1127
    .local v3, "minValue":I
    const/16 v4, 0x17

    .local v4, "maxValue":I
    goto :goto_0

    .line 1129
    .end local v2    # "initialStep":I
    .end local v3    # "minValue":I
    .end local v4    # "maxValue":I
    :cond_0
    invoke-direct {p0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour24To12(I)I

    move-result v2

    .line 1130
    .restart local v2    # "initialStep":I
    const/4 v3, 0x1

    .line 1131
    .restart local v3    # "minValue":I
    const/16 v4, 0xc

    .line 1133
    .end local v1    # "currentHour24":I
    .restart local v4    # "maxValue":I
    :goto_0
    goto :goto_1

    .line 1134
    .end local v0    # "stepSize":I
    .end local v2    # "initialStep":I
    .end local v3    # "minValue":I
    .end local v4    # "maxValue":I
    :cond_1
    const/4 v0, 0x5

    .line 1135
    .restart local v0    # "stepSize":I
    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v1

    div-int v2, v1, v0

    .line 1136
    .restart local v2    # "initialStep":I
    const/4 v3, 0x0

    .line 1137
    .restart local v3    # "minValue":I
    const/16 v4, 0x37

    .line 1140
    .restart local v4    # "maxValue":I
    :goto_1
    add-int v1, v2, p1

    mul-int/2addr v1, v0

    .line 1141
    .local v1, "nextValue":I
    invoke-static {v1, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    .line 1142
    .local v5, "clampedValue":I
    iget-object v6, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v6}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmShowHours(Landroid/widget/RadialTimePickerView;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1143
    iget-object v6, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v6, v5}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    goto :goto_2

    .line 1145
    :cond_2
    iget-object v6, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v6, v5}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 1147
    :goto_2
    return-void
.end method

.method private greylist-max-o getBoundsForVirtualView(ILandroid/graphics/Rect;)V
    .locals 13
    .param p1, "virtualViewId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 1315
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    .line 1316
    .local v0, "type":I
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v1

    .line 1319
    .local v1, "value":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1320
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3, v1}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetInnerCircleForHour(Landroid/widget/RadialTimePickerView;I)Z

    move-result v3

    .line 1321
    .local v3, "innerCircle":Z
    if-eqz v3, :cond_0

    .line 1322
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmCircleRadius(Landroid/widget/RadialTimePickerView;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v5}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmTextInset(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v5

    aget v2, v5, v2

    sub-int/2addr v4, v2

    int-to-float v2, v4

    .line 1323
    .local v2, "centerRadius":F
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmSelectorRadius(Landroid/widget/RadialTimePickerView;)I

    move-result v4

    int-to-float v4, v4

    .local v4, "radius":F
    goto :goto_0

    .line 1325
    .end local v2    # "centerRadius":F
    .end local v4    # "radius":F
    :cond_0
    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmCircleRadius(Landroid/widget/RadialTimePickerView;)I

    move-result v2

    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmTextInset(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    .line 1326
    .restart local v2    # "centerRadius":F
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmSelectorRadius(Landroid/widget/RadialTimePickerView;)I

    move-result v4

    int-to-float v4, v4

    .line 1329
    .restart local v4    # "radius":F
    :goto_0
    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v5, v1}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetDegreesForHour(Landroid/widget/RadialTimePickerView;I)I

    move-result v5

    int-to-float v3, v5

    .line 1330
    .local v3, "degrees":F
    goto :goto_1

    .end local v2    # "centerRadius":F
    .end local v3    # "degrees":F
    .end local v4    # "radius":F
    :cond_1
    if-ne v0, v2, :cond_2

    .line 1331
    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmCircleRadius(Landroid/widget/RadialTimePickerView;)I

    move-result v2

    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmTextInset(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v4

    aget v3, v4, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 1332
    .restart local v2    # "centerRadius":F
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3, v1}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetDegreesForMinute(Landroid/widget/RadialTimePickerView;I)I

    move-result v3

    int-to-float v3, v3

    .line 1333
    .restart local v3    # "degrees":F
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmSelectorRadius(Landroid/widget/RadialTimePickerView;)I

    move-result v4

    int-to-float v4, v4

    .restart local v4    # "radius":F
    goto :goto_1

    .line 1336
    .end local v2    # "centerRadius":F
    .end local v3    # "degrees":F
    .end local v4    # "radius":F
    :cond_2
    const/4 v2, 0x0

    .line 1337
    .restart local v2    # "centerRadius":F
    const/4 v3, 0x0

    .line 1338
    .restart local v3    # "degrees":F
    const/4 v4, 0x0

    .line 1341
    .restart local v4    # "radius":F
    :goto_1
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 1342
    .local v5, "radians":D
    iget-object v7, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v7}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmXCenter(Landroid/widget/RadialTimePickerView;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    .line 1343
    .local v7, "xCenter":F
    iget-object v8, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v8}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmYCenter(Landroid/widget/RadialTimePickerView;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v2

    sub-float/2addr v8, v9

    .line 1345
    .local v8, "yCenter":F
    sub-float v9, v7, v4

    float-to-int v9, v9

    sub-float v10, v8, v4

    float-to-int v10, v10

    add-float v11, v7, v4

    float-to-int v11, v11

    add-float v12, v8, v4

    float-to-int v12, v12

    invoke-virtual {p2, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1347
    return-void
.end method

.method private greylist-max-o getCircularDiff(III)I
    .locals 3
    .param p1, "first"    # I
    .param p2, "second"    # I
    .param p3, "max"    # I

    .line 1193
    sub-int v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1194
    .local v0, "diff":I
    div-int/lit8 v1, p3, 0x2

    .line 1195
    .local v1, "midpoint":I
    if-le v0, v1, :cond_0

    sub-int v2, p3, v0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    return v2
.end method

.method private greylist-max-o getTypeFromId(I)I
    .locals 1
    .param p1, "id"    # I

    .line 1376
    ushr-int/lit8 v0, p1, 0x0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private greylist-max-o getValueFromId(I)I
    .locals 1
    .param p1, "id"    # I

    .line 1380
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private greylist-max-o getVirtualViewDescription(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 1351
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1354
    :cond_0
    const/4 v0, 0x0

    .local v0, "description":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1352
    .end local v0    # "description":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1356
    .restart local v0    # "description":Ljava/lang/CharSequence;
    :goto_1
    return-object v0
.end method

.method private greylist-max-o getVirtualViewIdAfter(II)I
    .locals 4
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 1253
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1254
    add-int/lit8 v0, p2, 0x1

    .line 1255
    .local v0, "nextValue":I
    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v1}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    .line 1256
    .local v1, "max":I
    :goto_0
    if-gt v0, v1, :cond_1

    .line 1257
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v2

    return v2

    .line 1256
    .end local v0    # "nextValue":I
    .end local v1    # "max":I
    :cond_1
    goto :goto_1

    .line 1259
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 1260
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    .line 1261
    .local v0, "current":I
    rem-int/lit8 v1, p2, 0x5

    sub-int v1, p2, v1

    .line 1262
    .local v1, "snapValue":I
    add-int/lit8 v2, v1, 0x5

    .line 1263
    .local v2, "nextValue":I
    if-ge p2, v0, :cond_3

    if-le v2, v0, :cond_3

    .line 1265
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v3

    return v3

    .line 1266
    :cond_3
    const/16 v3, 0x3c

    if-ge v2, v3, :cond_5

    .line 1267
    invoke-direct {p0, p1, v2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v3

    return v3

    .line 1259
    .end local v0    # "current":I
    .end local v1    # "snapValue":I
    .end local v2    # "nextValue":I
    :cond_4
    :goto_1
    nop

    .line 1270
    :cond_5
    const/high16 v0, -0x80000000

    return v0
.end method

.method private greylist-max-o hour12To24(II)I
    .locals 2
    .param p1, "hour12"    # I
    .param p2, "amOrPm"    # I

    .line 1292
    move v0, p1

    .line 1293
    .local v0, "hour24":I
    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    .line 1294
    if-nez p2, :cond_1

    .line 1295
    const/4 v0, 0x0

    goto :goto_0

    .line 1297
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 1298
    add-int/lit8 v0, v0, 0xc

    .line 1300
    :cond_1
    :goto_0
    return v0
.end method

.method private greylist-max-o hour24To12(I)I
    .locals 1
    .param p1, "hour24"    # I

    .line 1304
    const/16 v0, 0xc

    if-nez p1, :cond_0

    .line 1305
    return v0

    .line 1306
    :cond_0
    if-le p1, v0, :cond_1

    .line 1307
    add-int/lit8 v0, p1, -0xc

    return v0

    .line 1309
    :cond_1
    return p1
.end method

.method private greylist-max-o isVirtualViewSelected(II)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 1361
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1362
    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v2

    if-ne v2, p2, :cond_0

    move v0, v1

    .local v0, "selected":Z
    :cond_0
    goto :goto_0

    .line 1363
    .end local v0    # "selected":Z
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 1364
    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v2

    if-ne v2, p2, :cond_2

    move v0, v1

    .restart local v0    # "selected":Z
    :cond_2
    goto :goto_0

    .line 1366
    .end local v0    # "selected":Z
    :cond_3
    const/4 v0, 0x0

    .line 1368
    .restart local v0    # "selected":Z
    :goto_0
    return v0
.end method

.method private greylist-max-o makeId(II)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 1372
    shl-int/lit8 v0, p1, 0x0

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected greylist-max-o getVirtualViewAt(FF)I
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1152
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetDegreesFromXY(Landroid/widget/RadialTimePickerView;FFZ)I

    move-result v0

    .line 1153
    .local v0, "degrees":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 1154
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/widget/RadialTimePickerView;->-$$Nest$smsnapOnly30s(II)I

    move-result v2

    rem-int/lit16 v2, v2, 0x168

    .line 1155
    .local v2, "snapDegrees":I
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmShowHours(Landroid/widget/RadialTimePickerView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1156
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3, p1, p2}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetInnerCircleFromXY(Landroid/widget/RadialTimePickerView;FF)Z

    move-result v3

    .line 1157
    .local v3, "isOnInnerCircle":Z
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4, v2, v3}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetHourForDegrees(Landroid/widget/RadialTimePickerView;IZ)I

    move-result v4

    .line 1158
    .local v4, "hour24":I
    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v5}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour24To12(I)I

    move-result v5

    .line 1159
    .local v5, "hour":I
    :goto_0
    invoke-direct {p0, v1, v5}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v1

    .line 1160
    .end local v3    # "isOnInnerCircle":Z
    .end local v4    # "hour24":I
    .end local v5    # "hour":I
    .local v1, "id":I
    goto :goto_2

    .line 1161
    .end local v1    # "id":I
    :cond_1
    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v1

    .line 1162
    .local v1, "current":I
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3, v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetMinuteForDegrees(Landroid/widget/RadialTimePickerView;I)I

    move-result v3

    .line 1163
    .local v3, "touched":I
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4, v2}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetMinuteForDegrees(Landroid/widget/RadialTimePickerView;I)I

    move-result v4

    .line 1167
    .local v4, "snapped":I
    const/16 v5, 0x3c

    invoke-direct {p0, v1, v3, v5}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getCircularDiff(III)I

    move-result v6

    .line 1168
    .local v6, "currentOffset":I
    invoke-direct {p0, v4, v3, v5}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getCircularDiff(III)I

    move-result v5

    .line 1170
    .local v5, "snappedOffset":I
    if-ge v6, v5, :cond_2

    .line 1171
    move v7, v1

    .local v7, "minute":I
    goto :goto_1

    .line 1173
    .end local v7    # "minute":I
    :cond_2
    move v7, v4

    .line 1175
    .restart local v7    # "minute":I
    :goto_1
    const/4 v8, 0x2

    invoke-direct {p0, v8, v7}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v8

    move v1, v8

    .line 1177
    .end local v2    # "snapDegrees":I
    .end local v3    # "touched":I
    .end local v4    # "snapped":I
    .end local v5    # "snappedOffset":I
    .end local v6    # "currentOffset":I
    .end local v7    # "minute":I
    .local v1, "id":I
    :goto_2
    goto :goto_3

    .line 1178
    .end local v1    # "id":I
    :cond_3
    const/high16 v1, -0x80000000

    .line 1181
    .restart local v1    # "id":I
    :goto_3
    return v1
.end method

.method protected greylist-max-o getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 5
    .param p1, "virtualViewIds"    # Landroid/util/IntArray;

    .line 1200
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmShowHours(Landroid/widget/RadialTimePickerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1201
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1202
    .local v0, "min":I
    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    .line 1203
    .local v2, "max":I
    :goto_0
    move v3, v0

    .local v3, "i":I
    :goto_1
    if-gt v3, v2, :cond_1

    .line 1204
    invoke-direct {p0, v1, v3}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->add(I)V

    .line 1203
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1206
    .end local v0    # "min":I
    .end local v2    # "max":I
    .end local v3    # "i":I
    :cond_1
    goto :goto_3

    .line 1207
    :cond_2
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    .line 1208
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x3c

    if-ge v1, v2, :cond_4

    .line 1209
    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IntArray;->add(I)V

    .line 1213
    if-le v0, v1, :cond_3

    add-int/lit8 v3, v1, 0x5

    if-ge v0, v3, :cond_3

    .line 1214
    invoke-direct {p0, v2, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->add(I)V

    .line 1208
    :cond_3
    add-int/lit8 v1, v1, 0x5

    goto :goto_2

    .line 1218
    .end local v0    # "current":I
    .end local v1    # "i":I
    :cond_4
    :goto_3
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1091
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1093
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1094
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1095
    return-void
.end method

.method protected greylist-max-o onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1276
    const/16 v0, 0x10

    if-ne p2, v0, :cond_2

    .line 1277
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    .line 1278
    .local v0, "type":I
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v1

    .line 1279
    .local v1, "value":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1280
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmAmOrPm(Landroid/widget/RadialTimePickerView;)I

    move-result v3

    invoke-direct {p0, v1, v3}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour12To24(II)I

    move-result v3

    .line 1281
    .local v3, "hour":I
    :goto_0
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v4, v3}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 1282
    return v2

    .line 1283
    .end local v3    # "hour":I
    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 1284
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v3, v1}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 1285
    return v2

    .line 1288
    .end local v0    # "type":I
    .end local v1    # "value":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-o onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1224
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    .line 1225
    .local v0, "type":I
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v1

    .line 1226
    .local v1, "value":I
    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1227
    .local v2, "description":Ljava/lang/CharSequence;
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1228
    return-void
.end method

.method protected greylist-max-o onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1232
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1233
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1235
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    .line 1236
    .local v0, "type":I
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v1

    .line 1237
    .local v1, "value":I
    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1238
    .local v2, "description":Ljava/lang/CharSequence;
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1240
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v3}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getBoundsForVirtualView(ILandroid/graphics/Rect;)V

    .line 1241
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1243
    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->isVirtualViewSelected(II)Z

    move-result v3

    .line 1244
    .local v3, "selected":Z
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 1246
    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewIdAfter(II)I

    move-result v4

    .line 1247
    .local v4, "nextId":I
    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_0

    .line 1248
    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p2, v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    .line 1250
    :cond_0
    return-void
.end method

.method public whitelist performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1099
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1100
    return v1

    .line 1103
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 1112
    const/4 v0, 0x0

    return v0

    .line 1108
    :sswitch_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    .line 1109
    return v1

    .line 1105
    :sswitch_1
    invoke-direct {p0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    .line 1106
    return v1

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method
