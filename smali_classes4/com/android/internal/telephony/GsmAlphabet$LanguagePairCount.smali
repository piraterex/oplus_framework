.class Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmAlphabet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LanguagePairCount"
.end annotation


# instance fields
.field final greylist languageCode:I

.field final greylist septetCounts:[I

.field final greylist unencodableCounts:[I


# direct methods
.method constructor greylist <init>(I)V
    .locals 5
    .param p1, "code"    # I

    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1147
    iput p1, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    .line 1148
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->-$$Nest$sfgetsHighestEnabledSingleShiftCode()I

    move-result v0

    .line 1149
    .local v0, "maxSingleShiftCode":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    .line 1150
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    .line 1153
    const/4 v1, 0x1

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "tableOffset":I
    :goto_0
    const/4 v3, -0x1

    if-gt v1, v0, :cond_1

    .line 1154
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->-$$Nest$sfgetsEnabledSingleShiftTables()[I

    move-result-object v4

    aget v4, v4, v2

    if-ne v4, v1, :cond_0

    .line 1155
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1157
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aput v3, v4, v1

    .line 1153
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1163
    .end local v1    # "i":I
    .end local v2    # "tableOffset":I
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    if-lt v0, v1, :cond_2

    .line 1164
    iget-object v2, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aput v3, v2, v1

    goto :goto_2

    .line 1165
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 1166
    iget-object v2, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aput v3, v2, v1

    .line 1168
    :cond_3
    :goto_2
    return-void
.end method
