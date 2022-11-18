.class synthetic Lcom/android/internal/graphics/palette/WuQuantizer$1;
.super Ljava/lang/Object;
.source "WuQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/WuQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$android$internal$graphics$palette$WuQuantizer$Direction:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 292
    invoke-static {}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->values()[Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/graphics/palette/WuQuantizer$1;->$SwitchMap$com$android$internal$graphics$palette$WuQuantizer$Direction:[I

    :try_start_0
    sget-object v1, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->RED:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    invoke-virtual {v1}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/internal/graphics/palette/WuQuantizer$1;->$SwitchMap$com$android$internal$graphics$palette$WuQuantizer$Direction:[I

    sget-object v1, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->GREEN:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    invoke-virtual {v1}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/internal/graphics/palette/WuQuantizer$1;->$SwitchMap$com$android$internal$graphics$palette$WuQuantizer$Direction:[I

    sget-object v1, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->BLUE:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    invoke-virtual {v1}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method
