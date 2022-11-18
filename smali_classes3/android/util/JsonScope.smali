.class final enum Landroid/util/JsonScope;
.super Ljava/lang/Enum;
.source "JsonScope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/util/JsonScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/util/JsonScope;

.field public static final enum greylist-max-o CLOSED:Landroid/util/JsonScope;

.field public static final enum greylist-max-o DANGLING_NAME:Landroid/util/JsonScope;

.field public static final enum greylist-max-o EMPTY_ARRAY:Landroid/util/JsonScope;

.field public static final enum greylist-max-o EMPTY_DOCUMENT:Landroid/util/JsonScope;

.field public static final enum greylist-max-o EMPTY_OBJECT:Landroid/util/JsonScope;

.field public static final enum greylist-max-o NONEMPTY_ARRAY:Landroid/util/JsonScope;

.field public static final enum greylist-max-o NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

.field public static final enum greylist-max-o NONEMPTY_OBJECT:Landroid/util/JsonScope;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 28
    new-instance v0, Landroid/util/JsonScope;

    const-string v1, "EMPTY_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    .line 34
    new-instance v1, Landroid/util/JsonScope;

    const-string v3, "NONEMPTY_ARRAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    .line 40
    new-instance v3, Landroid/util/JsonScope;

    const-string v5, "EMPTY_OBJECT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    .line 46
    new-instance v5, Landroid/util/JsonScope;

    const-string v7, "DANGLING_NAME"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/util/JsonScope;->DANGLING_NAME:Landroid/util/JsonScope;

    .line 52
    new-instance v7, Landroid/util/JsonScope;

    const-string v9, "NONEMPTY_OBJECT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    .line 57
    new-instance v9, Landroid/util/JsonScope;

    const-string v11, "EMPTY_DOCUMENT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/util/JsonScope;->EMPTY_DOCUMENT:Landroid/util/JsonScope;

    .line 62
    new-instance v11, Landroid/util/JsonScope;

    const-string v13, "NONEMPTY_DOCUMENT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    .line 67
    new-instance v13, Landroid/util/JsonScope;

    const-string v15, "CLOSED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v13, Landroid/util/JsonScope;->CLOSED:Landroid/util/JsonScope;

    .line 22
    const/16 v15, 0x8

    new-array v15, v15, [Landroid/util/JsonScope;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Landroid/util/JsonScope;->$VALUES:[Landroid/util/JsonScope;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/util/JsonScope;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Landroid/util/JsonScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/util/JsonScope;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/util/JsonScope;
    .locals 1

    .line 22
    sget-object v0, Landroid/util/JsonScope;->$VALUES:[Landroid/util/JsonScope;

    invoke-virtual {v0}, [Landroid/util/JsonScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/JsonScope;

    return-object v0
.end method
