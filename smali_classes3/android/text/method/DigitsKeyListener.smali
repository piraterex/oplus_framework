.class public Landroid/text/method/DigitsKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DigitsKeyListener.java"


# static fields
.field private static final greylist-max-o COMPATIBILITY_CHARACTERS:[[C

.field private static final greylist-max-o DECIMAL:I = 0x2

.field private static final greylist-max-o DEFAULT_DECIMAL_POINT_CHARS:Ljava/lang/String; = "."

.field private static final greylist-max-o DEFAULT_SIGN_CHARS:Ljava/lang/String; = "-+"

.field private static final greylist-max-o EN_DASH:C = '\u2013'

.field private static final greylist-max-o HYPHEN_MINUS:C = '-'

.field private static final greylist-max-o MINUS_SIGN:C = '\u2212'

.field private static final greylist-max-o SIGN:I = 0x1

.field private static final greylist-max-o sLocaleCacheLock:Ljava/lang/Object;

.field private static final greylist-max-o sLocaleInstanceCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/Locale;",
            "[",
            "Landroid/text/method/DigitsKeyListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sStringCacheLock:Ljava/lang/Object;

.field private static final greylist-max-o sStringInstanceCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/text/method/DigitsKeyListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAccepted:[C

.field private final greylist-max-o mDecimal:Z

.field private greylist-max-o mDecimalPointChars:Ljava/lang/String;

.field private final greylist-max-o mLocale:Ljava/util/Locale;

.field private greylist-max-o mNeedsAdvancedInput:Z

.field private final greylist-max-o mSign:Z

.field private greylist-max-o mSignChars:Ljava/lang/String;

.field private final greylist-max-o mStringMode:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [[C

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0xc

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xb

    new-array v1, v1, [C

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0xd

    new-array v1, v1, [C

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/text/method/DigitsKeyListener;->COMPATIBILITY_CHARACTERS:[[C

    .line 253
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sLocaleCacheLock:Ljava/lang/Object;

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sLocaleInstanceCache:Ljava/util/HashMap;

    .line 280
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sStringCacheLock:Ljava/lang/Object;

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sStringInstanceCache:Ljava/util/HashMap;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2bs
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2es
    .end array-data

    nop

    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    .line 102
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "accepted"    # Ljava/lang/String;

    .line 209
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 62
    const-string v0, "."

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    .line 63
    const-string v0, "-+"

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    .line 211
    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    .line 212
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mStringMode:Z

    .line 213
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mLocale:Ljava/util/Locale;

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-virtual {p1, v0, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 218
    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    .line 219
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    .line 118
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Locale;ZZ)V
    .locals 12
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "sign"    # Z
    .param p3, "decimal"    # Z

    .line 155
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 62
    const-string v0, "."

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    .line 63
    const-string v0, "-+"

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    .line 156
    iput-boolean p2, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    .line 157
    iput-boolean p3, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mStringMode:Z

    .line 159
    iput-object p1, p0, Landroid/text/method/DigitsKeyListener;->mLocale:Ljava/util/Locale;

    .line 160
    if-nez p1, :cond_0

    .line 161
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    .line 162
    return-void

    .line 164
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 165
    .local v1, "chars":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Character;>;"
    invoke-static {v1, p1}, Landroid/text/method/NumberKeyListener;->addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z

    move-result v2

    .line 166
    .local v2, "success":Z
    if-nez v2, :cond_1

    .line 167
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    .line 168
    return-void

    .line 170
    :cond_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_8

    .line 171
    :cond_2
    invoke-static {p1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v3

    .line 172
    .local v3, "symbols":Landroid/icu/text/DecimalFormatSymbols;
    const/4 v4, 0x1

    if-eqz p2, :cond_6

    .line 173
    invoke-virtual {v3}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/method/DigitsKeyListener;->stripBidiControls(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "minusString":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/method/DigitsKeyListener;->stripBidiControls(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 175
    .local v6, "plusString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v4, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v4, :cond_3

    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 181
    .local v7, "minus":C
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 182
    .local v8, "plus":C
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    .line 186
    const/16 v9, 0x2212

    if-eq v7, v9, :cond_4

    const/16 v9, 0x2013

    if-ne v7, v9, :cond_6

    .line 189
    :cond_4
    const/16 v9, 0x2d

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    goto :goto_1

    .line 177
    .end local v7    # "minus":C
    .end local v8    # "plus":C
    :cond_5
    :goto_0
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    .line 178
    return-void

    .line 193
    .end local v5    # "minusString":Ljava/lang/String;
    .end local v6    # "plusString":Ljava/lang/String;
    :cond_6
    :goto_1
    if-eqz p3, :cond_8

    .line 194
    invoke-virtual {v3}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparatorString()Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "separatorString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v4, :cond_7

    .line 197
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    .line 198
    return-void

    .line 200
    :cond_7
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 201
    .local v0, "separatorChar":Ljava/lang/Character;
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    .line 205
    .end local v0    # "separatorChar":Ljava/lang/Character;
    .end local v3    # "symbols":Landroid/icu/text/DecimalFormatSymbols;
    .end local v5    # "separatorString":Ljava/lang/String;
    :cond_8
    invoke-static {v1}, Landroid/text/method/NumberKeyListener;->collectionToArray(Ljava/util/Collection;)[C

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 206
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->calculateNeedForAdvancedInput()V

    .line 207
    return-void
.end method

.method public constructor whitelist <init>(ZZ)V
    .locals 1
    .param p1, "sign"    # Z
    .param p2, "decimal"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    .line 114
    return-void
.end method

.method private greylist-max-o calculateNeedForAdvancedInput()V
    .locals 3

    .line 129
    iget-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    .line 130
    .local v0, "kind":I
    sget-object v1, Landroid/text/method/DigitsKeyListener;->COMPATIBILITY_CHARACTERS:[[C

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->containsAll([C[C)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    .line 131
    return-void
.end method

.method public static whitelist getInstance()Landroid/text/method/DigitsKeyListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;
    .locals 4
    .param p0, "accepted"    # Ljava/lang/String;

    .line 292
    sget-object v0, Landroid/text/method/DigitsKeyListener;->sStringCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sStringInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/method/DigitsKeyListener;

    .line 294
    .local v2, "result":Landroid/text/method/DigitsKeyListener;
    if-nez v2, :cond_0

    .line 295
    new-instance v3, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v3, p0}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 296
    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_0
    monitor-exit v0

    .line 299
    return-object v2

    .line 298
    .end local v2    # "result":Landroid/text/method/DigitsKeyListener;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist getInstance(Ljava/util/Locale;)Landroid/text/method/DigitsKeyListener;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .line 250
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getInstance(Ljava/util/Locale;Landroid/text/method/DigitsKeyListener;)Landroid/text/method/DigitsKeyListener;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "listener"    # Landroid/text/method/DigitsKeyListener;

    .line 312
    iget-boolean v0, p1, Landroid/text/method/DigitsKeyListener;->mStringMode:Z

    if-eqz v0, :cond_0

    .line 313
    return-object p1

    .line 315
    :cond_0
    iget-boolean v0, p1, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iget-boolean v1, p1, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    invoke-static {p0, v0, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "sign"    # Z
    .param p2, "decimal"    # Z

    .line 266
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, p1

    .line 267
    .local v0, "kind":I
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sLocaleCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_0
    sget-object v2, Landroid/text/method/DigitsKeyListener;->sLocaleInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/method/DigitsKeyListener;

    .line 269
    .local v3, "cachedValue":[Landroid/text/method/DigitsKeyListener;
    if-eqz v3, :cond_1

    aget-object v4, v3, v0

    if-eqz v4, :cond_1

    .line 270
    aget-object v2, v3, v0

    monitor-exit v1

    return-object v2

    .line 272
    :cond_1
    if-nez v3, :cond_2

    .line 273
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/text/method/DigitsKeyListener;

    move-object v3, v4

    .line 274
    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_2
    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2, p0, p1, p2}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    aput-object v2, v3, v0

    monitor-exit v1

    return-object v2

    .line 277
    .end local v3    # "cachedValue":[Landroid/text/method/DigitsKeyListener;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static whitelist getInstance(ZZ)Landroid/text/method/DigitsKeyListener;
    .locals 1
    .param p0, "sign"    # Z
    .param p1, "decimal"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o isDecimalPointChar(C)Z
    .locals 2
    .param p1, "c"    # C

    .line 91
    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o isSignChar(C)Z
    .locals 2
    .param p1, "c"    # C

    .line 87
    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o setToCompat()V
    .locals 3

    .line 121
    const-string v0, "."

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    .line 122
    const-string v0, "-+"

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    .line 123
    iget-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    .line 124
    .local v0, "kind":I
    sget-object v1, Landroid/text/method/DigitsKeyListener;->COMPATIBILITY_CHARACTERS:[[C

    aget-object v1, v1, v0

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 125
    iput-boolean v2, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    .line 126
    return-void
.end method

.method private static greylist-max-o stripBidiControls(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "sign"    # Ljava/lang/String;

    .line 139
    const-string v0, ""

    .line 140
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 141
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 142
    .local v2, "c":C
    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 148
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .end local v2    # "c":C
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method


# virtual methods
.method public whitelist filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 17
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 341
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 343
    .local v3, "out":Ljava/lang/CharSequence;
    iget-boolean v4, v0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-nez v4, :cond_0

    iget-boolean v4, v0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-nez v4, :cond_0

    .line 344
    return-object v3

    .line 347
    :cond_0
    if-eqz v3, :cond_1

    .line 348
    move-object v4, v3

    .line 349
    .end local p1    # "source":Ljava/lang/CharSequence;
    .local v4, "source":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 350
    .end local p2    # "start":I
    .local v5, "start":I
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .end local p3    # "end":I
    .local v6, "end":I
    goto :goto_0

    .line 347
    .end local v4    # "source":Ljava/lang/CharSequence;
    .end local v5    # "start":I
    .end local v6    # "end":I
    .restart local p1    # "source":Ljava/lang/CharSequence;
    .restart local p2    # "start":I
    .restart local p3    # "end":I
    :cond_1
    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    .line 353
    .end local p1    # "source":Ljava/lang/CharSequence;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .restart local v4    # "source":Ljava/lang/CharSequence;
    .restart local v5    # "start":I
    .restart local v6    # "end":I
    :goto_0
    const/4 v7, -0x1

    .line 354
    .local v7, "sign":I
    const/4 v8, -0x1

    .line 355
    .local v8, "decimal":I
    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v9

    .line 361
    .local v9, "dlen":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v2, :cond_4

    .line 362
    invoke-interface {v1, v10}, Landroid/text/Spanned;->charAt(I)C

    move-result v11

    .line 364
    .local v11, "c":C
    invoke-direct {v0, v11}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 365
    move v7, v10

    goto :goto_2

    .line 366
    :cond_2
    invoke-direct {v0, v11}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 367
    move v8, v10

    .line 361
    .end local v11    # "c":C
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 370
    .end local v10    # "i":I
    :cond_4
    move/from16 v10, p6

    .restart local v10    # "i":I
    :goto_3
    const-string v11, ""

    if-ge v10, v9, :cond_7

    .line 371
    invoke-interface {v1, v10}, Landroid/text/Spanned;->charAt(I)C

    move-result v12

    .line 373
    .local v12, "c":C
    invoke-direct {v0, v12}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 374
    return-object v11

    .line 375
    :cond_5
    invoke-direct {v0, v12}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 376
    move v8, v10

    .line 370
    .end local v12    # "c":C
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 387
    .end local v10    # "i":I
    :cond_7
    const/4 v10, 0x0

    .line 389
    .local v10, "stripped":Landroid/text/SpannableStringBuilder;
    add-int/lit8 v12, v6, -0x1

    .local v12, "i":I
    :goto_4
    if-lt v12, v5, :cond_11

    .line 390
    invoke-interface {v4, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 391
    .local v13, "c":C
    const/4 v14, 0x0

    .line 393
    .local v14, "strip":Z
    invoke-direct {v0, v13}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 394
    if-ne v12, v5, :cond_a

    if-eqz v2, :cond_8

    goto :goto_5

    .line 396
    :cond_8
    if-ltz v7, :cond_9

    .line 397
    const/4 v14, 0x1

    goto :goto_6

    .line 399
    :cond_9
    move v7, v12

    goto :goto_6

    .line 395
    :cond_a
    :goto_5
    const/4 v14, 0x1

    goto :goto_6

    .line 401
    :cond_b
    invoke-direct {v0, v13}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 402
    if-ltz v8, :cond_c

    .line 403
    const/4 v14, 0x1

    goto :goto_6

    .line 405
    :cond_c
    move v8, v12

    .line 409
    :cond_d
    :goto_6
    if-eqz v14, :cond_10

    .line 410
    add-int/lit8 v15, v5, 0x1

    if-ne v6, v15, :cond_e

    .line 411
    return-object v11

    .line 414
    :cond_e
    if-nez v10, :cond_f

    .line 415
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v4, v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    move-object v10, v15

    .line 418
    :cond_f
    sub-int v15, v12, v5

    add-int/lit8 v16, v12, 0x1

    sub-int v0, v16, v5

    invoke-virtual {v10, v15, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 389
    .end local v13    # "c":C
    .end local v14    # "strip":Z
    :cond_10
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    goto :goto_4

    .line 422
    .end local v12    # "i":I
    :cond_11
    if-eqz v10, :cond_12

    .line 423
    return-object v10

    .line 424
    :cond_12
    if-eqz v3, :cond_13

    .line 425
    return-object v3

    .line 427
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist getAcceptedChars()[C
    .locals 1

    .line 70
    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    return-object v0
.end method

.method public whitelist getInputType()I
    .locals 2

    .line 324
    iget-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    if-eqz v0, :cond_0

    .line 325
    const/4 v0, 0x1

    .local v0, "contentType":I
    goto :goto_0

    .line 327
    .end local v0    # "contentType":I
    :cond_0
    const/4 v0, 0x2

    .line 328
    .restart local v0    # "contentType":I
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-eqz v1, :cond_1

    .line 329
    or-int/lit16 v0, v0, 0x1000

    .line 331
    :cond_1
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz v1, :cond_2

    .line 332
    or-int/lit16 v0, v0, 0x2000

    .line 335
    :cond_2
    :goto_0
    return v0
.end method
