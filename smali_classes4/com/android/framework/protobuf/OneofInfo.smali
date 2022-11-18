.class final Lcom/android/framework/protobuf/OneofInfo;
.super Ljava/lang/Object;
.source "OneofInfo.java"


# instance fields
.field private final blacklist caseField:Ljava/lang/reflect/Field;

.field private final blacklist id:I

.field private final blacklist valueField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "caseField"    # Ljava/lang/reflect/Field;
    .param p3, "valueField"    # Ljava/lang/reflect/Field;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/android/framework/protobuf/OneofInfo;->id:I

    .line 45
    iput-object p2, p0, Lcom/android/framework/protobuf/OneofInfo;->caseField:Ljava/lang/reflect/Field;

    .line 46
    iput-object p3, p0, Lcom/android/framework/protobuf/OneofInfo;->valueField:Ljava/lang/reflect/Field;

    .line 47
    return-void
.end method


# virtual methods
.method public blacklist getCaseField()Ljava/lang/reflect/Field;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/framework/protobuf/OneofInfo;->caseField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public blacklist getId()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/android/framework/protobuf/OneofInfo;->id:I

    return v0
.end method

.method public blacklist getValueField()Ljava/lang/reflect/Field;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/framework/protobuf/OneofInfo;->valueField:Ljava/lang/reflect/Field;

    return-object v0
.end method
