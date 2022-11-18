.class public final enum Lcom/android/framework/protobuf/JavaType;
.super Ljava/lang/Enum;
.source "JavaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/framework/protobuf/JavaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/framework/protobuf/JavaType;

.field public static final enum blacklist BOOLEAN:Lcom/android/framework/protobuf/JavaType;

.field public static final enum blacklist BYTE_STRING:Lcom/android/framework/protobuf/JavaType;

.field public static final enum blacklist DOUBLE:Lcom/android/framework/protobuf/JavaType;

.field public static final enum blacklist ENUM:Lcom/android/framework/protobuf/JavaType;

.field public static final enum blacklist FLOAT:Lcom/android/framework/protobuf/JavaType;

.field public static final enum blacklist INT:Lcom/android/framework/protobuf/JavaType;

.field public static final enum blacklist LONG:Lcom/android/framework/protobuf/JavaType;

.field public static final enum blacklist MESSAGE:Lcom/android/framework/protobuf/JavaType;

.field public static final enum blacklist STRING:Lcom/android/framework/protobuf/JavaType;

.field public static final enum blacklist VOID:Lcom/android/framework/protobuf/JavaType;


# instance fields
.field private final blacklist boxedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist defaultDefault:Ljava/lang/Object;

.field private final blacklist type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 27

    .line 36
    new-instance v6, Lcom/android/framework/protobuf/JavaType;

    const-class v3, Ljava/lang/Void;

    const-class v4, Ljava/lang/Void;

    const-string v1, "VOID"

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v6, Lcom/android/framework/protobuf/JavaType;->VOID:Lcom/android/framework/protobuf/JavaType;

    .line 37
    new-instance v0, Lcom/android/framework/protobuf/JavaType;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v8, "INT"

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    .line 38
    new-instance v2, Lcom/android/framework/protobuf/JavaType;

    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v17, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v14, "LONG"

    const/4 v15, 0x2

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/android/framework/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v2, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    .line 39
    new-instance v3, Lcom/android/framework/protobuf/JavaType;

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Float;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const-string v8, "FLOAT"

    const/4 v9, 0x3

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v3, Lcom/android/framework/protobuf/JavaType;->FLOAT:Lcom/android/framework/protobuf/JavaType;

    .line 40
    new-instance v4, Lcom/android/framework/protobuf/JavaType;

    sget-object v16, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v17, Ljava/lang/Double;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    const-string v14, "DOUBLE"

    const/4 v15, 0x4

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/android/framework/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v4, Lcom/android/framework/protobuf/JavaType;->DOUBLE:Lcom/android/framework/protobuf/JavaType;

    .line 41
    new-instance v5, Lcom/android/framework/protobuf/JavaType;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string v8, "BOOLEAN"

    const/4 v9, 0x5

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v5, Lcom/android/framework/protobuf/JavaType;->BOOLEAN:Lcom/android/framework/protobuf/JavaType;

    .line 42
    new-instance v7, Lcom/android/framework/protobuf/JavaType;

    const-class v16, Ljava/lang/String;

    const-class v17, Ljava/lang/String;

    const-string v14, "STRING"

    const/4 v15, 0x6

    const-string v18, ""

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/android/framework/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v7, Lcom/android/framework/protobuf/JavaType;->STRING:Lcom/android/framework/protobuf/JavaType;

    .line 43
    new-instance v14, Lcom/android/framework/protobuf/JavaType;

    const-class v11, Lcom/android/framework/protobuf/ByteString;

    const-class v12, Lcom/android/framework/protobuf/ByteString;

    sget-object v13, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    const-string v9, "BYTE_STRING"

    const/4 v10, 0x7

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/android/framework/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v14, Lcom/android/framework/protobuf/JavaType;->BYTE_STRING:Lcom/android/framework/protobuf/JavaType;

    .line 44
    new-instance v8, Lcom/android/framework/protobuf/JavaType;

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v19, Ljava/lang/Integer;

    const-string v16, "ENUM"

    const/16 v17, 0x8

    const/16 v20, 0x0

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lcom/android/framework/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v8, Lcom/android/framework/protobuf/JavaType;->ENUM:Lcom/android/framework/protobuf/JavaType;

    .line 45
    new-instance v9, Lcom/android/framework/protobuf/JavaType;

    const-class v24, Ljava/lang/Object;

    const-class v25, Ljava/lang/Object;

    const-string v22, "MESSAGE"

    const/16 v23, 0x9

    const/16 v26, 0x0

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v26}, Lcom/android/framework/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v9, Lcom/android/framework/protobuf/JavaType;->MESSAGE:Lcom/android/framework/protobuf/JavaType;

    .line 34
    const/16 v10, 0xa

    new-array v10, v10, [Lcom/android/framework/protobuf/JavaType;

    aput-object v6, v10, v1

    const/4 v1, 0x1

    aput-object v0, v10, v1

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v5, v10, v0

    const/4 v0, 0x6

    aput-object v7, v10, v0

    const/4 v0, 0x7

    aput-object v14, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v9, v10, v0

    sput-object v10, Lcom/android/framework/protobuf/JavaType;->$VALUES:[Lcom/android/framework/protobuf/JavaType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .param p5, "defaultDefault"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 51
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "boxedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/android/framework/protobuf/JavaType;->type:Ljava/lang/Class;

    .line 53
    iput-object p4, p0, Lcom/android/framework/protobuf/JavaType;->boxedType:Ljava/lang/Class;

    .line 54
    iput-object p5, p0, Lcom/android/framework/protobuf/JavaType;->defaultDefault:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/framework/protobuf/JavaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lcom/android/framework/protobuf/JavaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/JavaType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/framework/protobuf/JavaType;
    .locals 1

    .line 34
    sget-object v0, Lcom/android/framework/protobuf/JavaType;->$VALUES:[Lcom/android/framework/protobuf/JavaType;

    invoke-virtual {v0}, [Lcom/android/framework/protobuf/JavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/framework/protobuf/JavaType;

    return-object v0
.end method


# virtual methods
.method public blacklist getBoxedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/framework/protobuf/JavaType;->boxedType:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist getDefaultDefault()Ljava/lang/Object;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/framework/protobuf/JavaType;->defaultDefault:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/framework/protobuf/JavaType;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist isValidType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 74
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/JavaType;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
