.class final Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;
.super Ljava/lang/Object;
.source "RemoteInputConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KnownAlwaysTrueEndBatchEditCache"
.end annotation


# static fields
.field private static volatile blacklist sArray:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile blacklist sElement:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist add(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/inputmethod/InputConnection;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/inputmethod/InputConnection;>;"
    sget-object v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sElement:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 140
    sput-object p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sElement:Ljava/lang/Class;

    .line 141
    return-void

    .line 144
    :cond_0
    sget-object v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sArray:[Ljava/lang/Class;

    .line 145
    .local v0, "array":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    array-length v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 146
    .local v1, "arraySize":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 147
    .local v2, "newArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 148
    aget-object v4, v0, v3

    aput-object v4, v2, v3

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 150
    .end local v3    # "i":I
    :cond_2
    aput-object p0, v2, v1

    .line 153
    sput-object v2, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sArray:[Ljava/lang/Class;

    .line 154
    return-void
.end method

.method static blacklist contains(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/inputmethod/InputConnection;",
            ">;)Z"
        }
    .end annotation

    .line 113
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/inputmethod/InputConnection;>;"
    sget-object v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sElement:Ljava/lang/Class;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 114
    return v1

    .line 116
    :cond_0
    sget-object v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sArray:[Ljava/lang/Class;

    .line 117
    .local v0, "array":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 118
    return v2

    .line 120
    :cond_1
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 121
    .local v5, "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v5, p0, :cond_2

    .line 122
    return v1

    .line 120
    .end local v5    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    :cond_3
    return v2
.end method
