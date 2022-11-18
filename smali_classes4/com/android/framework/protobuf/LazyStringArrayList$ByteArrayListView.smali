.class Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;
.super Ljava/util/AbstractList;
.source "LazyStringArrayList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/LazyStringArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayListView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "[B>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final blacklist list:Lcom/android/framework/protobuf/LazyStringArrayList;


# direct methods
.method constructor blacklist <init>(Lcom/android/framework/protobuf/LazyStringArrayList;)V
    .locals 0
    .param p1, "list"    # Lcom/android/framework/protobuf/LazyStringArrayList;

    .line 327
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 328
    iput-object p1, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/android/framework/protobuf/LazyStringArrayList;

    .line 329
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api add(ILjava/lang/Object;)V
    .locals 0

    .line 324
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->add(I[B)V

    return-void
.end method

.method public blacklist add(I[B)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "s"    # [B

    .line 350
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-static {v0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->access$200(Lcom/android/framework/protobuf/LazyStringArrayList;I[B)V

    .line 351
    iget v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    .line 352
    return-void
.end method

.method public bridge synthetic whitelist test-api get(I)Ljava/lang/Object;
    .locals 0

    .line 324
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->get(I)[B

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(I)[B
    .locals 1
    .param p1, "index"    # I

    .line 333
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->getByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api remove(I)Ljava/lang/Object;
    .locals 0

    .line 324
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->remove(I)[B

    move-result-object p1

    return-object p1
.end method

.method public blacklist remove(I)[B
    .locals 2
    .param p1, "index"    # I

    .line 356
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    .line 358
    invoke-static {v0}, Lcom/android/framework/protobuf/LazyStringArrayList;->access$100(Ljava/lang/Object;)[B

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 324
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->set(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public blacklist set(I[B)[B
    .locals 2
    .param p1, "index"    # I
    .param p2, "s"    # [B

    .line 343
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-static {v0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->access$000(Lcom/android/framework/protobuf/LazyStringArrayList;I[B)Ljava/lang/Object;

    move-result-object v0

    .line 344
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    .line 345
    invoke-static {v0}, Lcom/android/framework/protobuf/LazyStringArrayList;->access$100(Ljava/lang/Object;)[B

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api size()I
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/LazyStringArrayList;->size()I

    move-result v0

    return v0
.end method
