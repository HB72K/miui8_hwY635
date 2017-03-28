.class public Landroid/text/AutoText;
.super Ljava/lang/Object;
.source "AutoText.java"


# static fields
.field private static final DEFAULT:I = 0x3801

.field private static final INCREMENT:I = 0x400

.field private static final RIGHT:I = 0x2454

.field private static final TRIE_C:I = 0x0

.field private static final TRIE_CHILD:I = 0x2

.field private static final TRIE_NEXT:I = 0x3

.field private static final TRIE_NULL:C = '\uffff'

.field private static final TRIE_OFF:I = 0x1

.field private static final TRIE_ROOT:I = 0x0

.field private static final TRIE_SIZEOF:I = 0x4

.field private static sInstance:Landroid/text/AutoText;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mLocale:Ljava/util/Locale;

.field private mSize:I

.field private mText:Ljava/lang/String;

.field private mTrie:[C

.field private mTrieUsed:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/text/AutoText;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/AutoText;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/AutoText;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/text/AutoText;->mLocale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Landroid/text/AutoText;->init(Landroid/content/res/Resources;)V

    return-void
.end method

.method private add(Ljava/lang/String;C)V
    .locals 9
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "off"    # C

    .prologue
    const v8, 0xffff

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "slen":I
    const/4 v2, 0x0

    .local v2, "herep":I
    iget v6, p0, Landroid/text/AutoText;->mSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/text/AutoText;->mSize:I

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    const/4 v1, 0x0

    .local v1, "found":Z
    :goto_1
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v2

    if-eq v6, v8, :cond_1

    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v2

    add-int/lit8 v7, v7, 0x0

    aget-char v6, v6, v7

    if-ne v0, v6, :cond_2

    add-int/lit8 v6, v5, -0x1

    if-ne v3, v6, :cond_0

    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v2

    add-int/lit8 v7, v7, 0x1

    aput-char p2, v6, v7

    return-void

    :cond_0
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v2

    add-int/lit8 v2, v6, 0x2

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_4

    invoke-direct {p0}, Landroid/text/AutoText;->newTrieNode()C

    move-result v4

    .local v4, "node":C
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aput-char v4, v6, v2

    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v2

    add-int/lit8 v7, v7, 0x0

    aput-char v0, v6, v7

    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v2

    add-int/lit8 v7, v7, 0x1

    aput-char v8, v6, v7

    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v2

    add-int/lit8 v7, v7, 0x3

    aput-char v8, v6, v7

    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v2

    add-int/lit8 v7, v7, 0x2

    aput-char v8, v6, v7

    add-int/lit8 v6, v5, -0x1

    if-ne v3, v6, :cond_3

    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v2

    add-int/lit8 v7, v7, 0x1

    aput-char p2, v6, v7

    return-void

    .end local v4    # "node":C
    :cond_2
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v2

    add-int/lit8 v2, v6, 0x3

    goto :goto_1

    .restart local v4    # "node":C
    :cond_3
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v2

    add-int/lit8 v2, v6, 0x2

    .end local v4    # "node":C
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "c":C
    .end local v1    # "found":Z
    :cond_5
    return-void
.end method

.method public static get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    invoke-static {p3}, Landroid/text/AutoText;->getInstance(Landroid/view/View;)Landroid/text/AutoText;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2}, Landroid/text/AutoText;->lookup(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance(Landroid/view/View;)Landroid/text/AutoText;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .local v1, "locale":Ljava/util/Locale;
    sget-object v4, Landroid/text/AutoText;->sLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v0, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    .local v0, "instance":Landroid/text/AutoText;
    iget-object v3, v0, Landroid/text/AutoText;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Landroid/text/AutoText;

    .end local v0    # "instance":Landroid/text/AutoText;
    invoke-direct {v0, v2}, Landroid/text/AutoText;-><init>(Landroid/content/res/Resources;)V

    .restart local v0    # "instance":Landroid/text/AutoText;
    sput-object v0, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    return-object v0

    .end local v0    # "instance":Landroid/text/AutoText;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getSize()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/AutoText;->mSize:I

    return v0
.end method

.method public static getSize(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    invoke-static {p0}, Landroid/text/AutoText;->getInstance(Landroid/view/View;)Landroid/text/AutoText;

    move-result-object v0

    invoke-direct {v0}, Landroid/text/AutoText;->getSize()I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/res/Resources;)V
    .locals 12
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    const v9, 0x1110002

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v9, 0x2454

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v7, "right":Ljava/lang/StringBuilder;
    const/16 v9, 0x3801

    new-array v9, v9, [C

    iput-object v9, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v9, p0, Landroid/text/AutoText;->mTrie:[C

    const v10, 0xffff

    const/4 v11, 0x0

    aput-char v10, v9, v11

    const/4 v9, 0x1

    iput-char v9, p0, Landroid/text/AutoText;->mTrieUsed:C

    :try_start_0
    const-string v9, "words"

    invoke-static {v6, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string v4, ""

    .local v4, "odest":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .local v3, "element":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v9, "word"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "src"

    const/4 v10, 0x0

    invoke-interface {v6, v10, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "src":Ljava/lang/String;
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0

    .local v0, "dest":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v5, 0x0

    :goto_1
    invoke-direct {p0, v8, v5}, Landroid/text/AutoText;->add(Ljava/lang/String;C)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "dest":Ljava/lang/String;
    .end local v3    # "element":Ljava/lang/String;
    .end local v4    # "odest":Ljava/lang/String;
    .end local v8    # "src":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v9

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    throw v9

    .restart local v0    # "dest":Ljava/lang/String;
    .restart local v3    # "element":Ljava/lang/String;
    .restart local v4    # "odest":Ljava/lang/String;
    .restart local v8    # "src":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    int-to-char v5, v9

    .local v5, "off":C
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    int-to-char v9, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v0    # "dest":Ljava/lang/String;
    .end local v3    # "element":Ljava/lang/String;
    .end local v4    # "odest":Ljava/lang/String;
    .end local v5    # "off":C
    .end local v8    # "src":Ljava/lang/String;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "element":Ljava/lang/String;
    .restart local v4    # "odest":Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Landroid/content/res/Resources;->flushLayoutCache()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    return-void
.end method

.method private lookup(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 9
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v8, 0x0

    const v7, 0xffff

    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    const/4 v6, 0x0

    aget-char v1, v5, v6

    .local v1, "here":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_4

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "c":C
    :goto_1
    if-eq v1, v7, :cond_1

    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v1, 0x0

    aget-char v5, v5, v6

    if-ne v0, v5, :cond_2

    add-int/lit8 v5, p3, -0x1

    if-ne v2, v5, :cond_0

    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v1, 0x1

    aget-char v5, v5, v6

    if-eq v5, v7, :cond_0

    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v1, 0x1

    aget-char v4, v5, v6

    .local v4, "off":I
    iget-object v5, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .local v3, "len":I
    iget-object v5, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v4, 0x1

    add-int/2addr v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .end local v3    # "len":I
    .end local v4    # "off":I
    :cond_0
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v1, 0x2

    aget-char v1, v5, v6

    :cond_1
    if-ne v1, v7, :cond_3

    return-object v8

    :cond_2
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v1, 0x3

    aget-char v1, v5, v6

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "c":C
    :cond_4
    return-object v8
.end method

.method private newTrieNode()C
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-char v2, p0, Landroid/text/AutoText;->mTrieUsed:C

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v3, v3

    if-le v2, v3, :cond_0

    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v2, v2

    add-int/lit16 v2, v2, 0x400

    new-array v0, v2, [C

    .local v0, "copy":[C
    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v3, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    iput-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    .end local v0    # "copy":[C
    :cond_0
    iget-char v1, p0, Landroid/text/AutoText;->mTrieUsed:C

    .local v1, "ret":C
    iget-char v2, p0, Landroid/text/AutoText;->mTrieUsed:C

    add-int/lit8 v2, v2, 0x4

    int-to-char v2, v2

    iput-char v2, p0, Landroid/text/AutoText;->mTrieUsed:C

    return v1
.end method
