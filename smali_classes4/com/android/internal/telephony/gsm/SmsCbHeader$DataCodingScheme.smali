.class public final Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;
.super Ljava/lang/Object;
.source "SmsCbHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsCbHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataCodingScheme"
.end annotation


# instance fields
.field public final blacklist encoding:I

.field public final blacklist hasLanguageIndicator:Z

.field public final blacklist language:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 6
    .param p1, "dataCodingScheme"    # I

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "encoding":I
    const/4 v1, 0x0

    .line 519
    .local v1, "language":Ljava/lang/String;
    const/4 v2, 0x0

    .line 523
    .local v2, "hasLanguageIndicator":Z
    and-int/lit16 v3, p1, 0xf0

    shr-int/lit8 v3, v3, 0x4

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 585
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 576
    :pswitch_1
    and-int/lit8 v3, p1, 0x4

    shr-int/lit8 v3, v3, 0x2

    if-ne v3, v4, :cond_0

    .line 577
    const/4 v0, 0x2

    goto :goto_0

    .line 579
    :cond_0
    const/4 v0, 0x1

    .line 581
    goto :goto_0

    .line 572
    :pswitch_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported GSM dataCodingScheme "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 549
    :pswitch_3
    and-int/lit8 v3, p1, 0xc

    shr-int/lit8 v3, v3, 0x2

    packed-switch v3, :pswitch_data_1

    .line 560
    const/4 v0, 0x1

    .line 561
    goto :goto_0

    .line 555
    :pswitch_4
    const/4 v0, 0x3

    .line 556
    goto :goto_0

    .line 551
    :pswitch_5
    const/4 v0, 0x2

    .line 552
    goto :goto_0

    .line 544
    :pswitch_6
    const/4 v0, 0x1

    .line 545
    goto :goto_0

    .line 539
    :pswitch_7
    const/4 v0, 0x1

    .line 540
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->-$$Nest$sfgetLANGUAGE_CODES_GROUP_2()[Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, p1, 0xf

    aget-object v1, v3, v4

    .line 541
    goto :goto_0

    .line 530
    :pswitch_8
    const/4 v2, 0x1

    .line 531
    and-int/lit8 v3, p1, 0xf

    if-ne v3, v4, :cond_1

    .line 532
    const/4 v0, 0x3

    goto :goto_0

    .line 534
    :cond_1
    const/4 v0, 0x1

    .line 536
    goto :goto_0

    .line 525
    :pswitch_9
    const/4 v0, 0x1

    .line 526
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->-$$Nest$sfgetLANGUAGE_CODES_GROUP_0()[Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, p1, 0xf

    aget-object v1, v3, v4

    .line 527
    nop

    .line 590
    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;->encoding:I

    .line 591
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;->language:Ljava/lang/String;

    .line 592
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;->hasLanguageIndicator:Z

    .line 593
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
